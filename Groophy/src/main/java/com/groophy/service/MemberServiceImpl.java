package com.groophy.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import com.groophy.dao.GroupDAO;
import com.groophy.dao.MemberDAO;
import com.groophy.dto.GroupDTO;
import com.groophy.dto.MemberInfoDTO;
import com.groophy.dto.MemberStatDTO;
import com.groophy.extra.HashingComponent;

public class MemberServiceImpl implements MemberService {
	private MemberDAO memberDAO;
	private GroupDAO groupDAO;
	private HashingComponent hashingComponent;

	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	public void setGroupDAO(GroupDAO groupDAO) {
		this.groupDAO = groupDAO;
	}

	public void setHashingComponent(HashingComponent hashingComponent) {
		this.hashingComponent = hashingComponent;
	}

	public MemberInfoDTO fileUploadMethod(MemberInfoDTO memberInfoDTO, String filePath, String originalFileName,
			byte[] fileBytes) {
		String uId = memberInfoDTO.getuId();

		if (filePath != null && originalFileName != null) {
			BufferedOutputStream outputStream = null;
			try {
				outputStream = new BufferedOutputStream(
						new FileOutputStream(new File(filePath, memberInfoDTO.getuId() + ".jpg")));
				outputStream.write(fileBytes);
				outputStream.close();
				memberInfoDTO.setuPhoto(uId);
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				try {
					outputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		} else {
			memberInfoDTO.setuPhoto("default");
		}

		return memberInfoDTO;
	}

	@Override
	public Map<String, Object> join(MemberInfoDTO memberInfoDTO, String filePath, String originalFileName,
			byte[] fileBytes) {
		Map<String, Object> retMap = new HashMap<String, Object>();
		MemberStatDTO memberStatDTO = null;
		String uId = memberInfoDTO.getuId();
		int result = 0;

		memberInfoDTO = fileUploadMethod(memberInfoDTO, filePath, originalFileName, fileBytes);

		String hashedPassword = hashingComponent.hashByBcrypt(memberInfoDTO.getuPw());
		memberInfoDTO.setuPw(hashedPassword);

		result = memberDAO.insertToMemberInfo(memberInfoDTO);
		result = memberDAO.insertToMemberStat(uId);
		memberInfoDTO = memberDAO.getMemberInfoDTO(uId);
		memberStatDTO = memberDAO.getMemberStatDTO(uId);

		retMap.put("memberInfoDTO", memberInfoDTO);
		retMap.put("memberStatDTO", memberStatDTO);

		return retMap;
	}

	@Override
	public Map<String, Object> login(String uId, String uPw) {
		Map<String, Object> retMap = new HashMap<String, Object>();
		MemberStatDTO memberStatDTO = null;
		MemberInfoDTO memberInfoDTO = null;
		String hashedPassword = memberDAO.getPassword(uId);

		if (hashingComponent.matchByBcrypt(uPw, hashedPassword)) {
			memberInfoDTO = memberDAO.getMemberInfoDTO(uId);
			memberStatDTO = memberDAO.getMemberStatDTO(uId);
		}

		retMap.put("memberInfoDTO", memberInfoDTO);
		retMap.put("memberStatDTO", memberStatDTO);

		return retMap;
	}

	@Override
	public String findID(String uEmail) {
		String uId = null;

		uId = memberDAO.getUid(uEmail);

		return uId;
	}

	@Override
	public int findPW(String uId, String uEmail) {
		int result = 0;
		Random random = new Random();
		int randomPw = random.nextInt(999999);
		MemberInfoDTO memberInfoDTO = new MemberInfoDTO();
		memberInfoDTO.setuId(uId);
		memberInfoDTO.setuEmail(uEmail);
		String hashedPassword = hashingComponent.hashByBcrypt(Integer.toString(randomPw));
		memberInfoDTO.setuPw(hashedPassword);

		result = memberDAO.updatePassword(memberInfoDTO);

		return randomPw;
	}

	@Override
	public Map<String, Object> memberInfo(String uId) {
		Map<String, Object> retMap = new HashMap<String, Object>();
		MemberInfoDTO memberInfoDTO = null;
		MemberStatDTO memberStatDTO = null;
		GroupDTO groupDTO=null;
		int gIndex=0;
		
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat("yyyy.MM.dd", Locale.KOREA);
		Date currentTime = new Date();
		String strCurrentTime = mSimpleDateFormat.format(currentTime);

		// TODO Auto-generated method stub

		/*
		 * 출석률 관련 db구상 >>출석해야할횟수(CHECKCOUNT)를 하루+1씩 꾸준히 UPDATE하는것이 아니라 출석률을 뿌려야할때 한번에
		 * UPDATE함 오늘 날짜-스터디시작일=오늘까지 스터디 진행일이 나옴 이걸 출석률작업 시작할때 처음에 컬럼에 출석횟수를 UPDATE하는
		 * 작업을 하고나서 적용된걸 SELECT한 뒤에 뿌리면됨 GroupDTO에 출석시작시간과 마감시간을 추가해서 시간내에 출석시 가능케
		 * 
		 * [정리]checkcount는 출석률을 뿌려야하는 서비스를 할때 시작으로 오늘-스터디시작일을 계산해 checkcount를 update한뒤
		 * 작업한다
		 */

		memberInfoDTO = memberDAO.getMemberInfoDTO(uId);
		memberStatDTO = memberDAO.getMemberStatDTO(uId);
		gIndex=memberStatDTO.getgIndex();
		groupDTO=groupDAO.getGroupDTO2(gIndex);

		retMap.put("memberInfoDTO", memberInfoDTO);
		retMap.put("memberStatDTO", memberStatDTO);
		retMap.put("groupDTO", groupDTO);
		return retMap;
	}

	@Override
	public boolean modifyBefore(String uId, String uPw) {
		boolean result = false;
		String hashedPassword = memberDAO.getPassword(uId);

		result = hashingComponent.matchByBcrypt(uPw, hashedPassword);

		return result;
	}

	@Override
	public MemberInfoDTO modifyInfo(MemberInfoDTO memberInfoDTO, String filePath, String originalFileName,
			byte[] fileBytes) {
		int result = 0;
		String uId = memberInfoDTO.getuId();
		String hashedPassword = hashingComponent.hashByBcrypt(memberInfoDTO.getuPw());
		memberInfoDTO.setuPw(hashedPassword);

		memberInfoDTO = fileUploadMethod(memberInfoDTO, filePath, originalFileName, fileBytes);

		result = memberDAO.updateMemberInfo(memberInfoDTO);
		memberInfoDTO = memberDAO.getMemberInfoDTO(uId);

		return memberInfoDTO;
	}

	@Override
	//TODO 해당회원이 조장일시 해당그룹삭제
	public int withdraw(String uId, String uPw) {
		int result = 0;
		String hashedPassword = memberDAO.getPassword(uId);

		if (hashingComponent.matchByBcrypt(uPw, hashedPassword)) {
			result = memberDAO.deleteMemberInfo(uId);
			memberDAO.deleteMemberStat(uId);
		} else {
			result = -1;
		}

		return result;
	}

}
