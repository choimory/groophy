package com.groophy.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.groophy.dao.BoardDAO;
import com.groophy.dao.GroupDAO;
import com.groophy.dao.MemberDAO;
import com.groophy.dao.QuizDAO;
import com.groophy.dao.ReplyDAO;
import com.groophy.dto.GroupCommentDTO;
import com.groophy.dto.GroupDTO;
import com.groophy.dto.MemberInfoDTO;
import com.groophy.dto.MemberStatDTO;
import com.groophy.extra.HashingComponent;

public class GroupServiceImpl implements GroupService {
	private MemberDAO memberDAO;
	private GroupDAO groupDAO;
	
	@Autowired
	private BoardDAO boardDAO;
	@Autowired
	private ReplyDAO replyDAO;
	private QuizDAO quizDAO;
	private HashingComponent hashingComponent;

	public void setBoardDAO(BoardDAO boardDAO) {
		this.boardDAO = boardDAO;
	}

	public void setReplyDAO(ReplyDAO replyDAO) {
		this.replyDAO = replyDAO;
	}

	public void setQuizDAO(QuizDAO quizDAO) {
		this.quizDAO = quizDAO;
	}

	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	public void setGroupDAO(GroupDAO groupDAO) {
		this.groupDAO = groupDAO;
	}

	public void setHashingComponent(HashingComponent hashingComponent) {
		this.hashingComponent = hashingComponent;
	}

	public GroupDTO fileUploadMethod(GroupDTO groupDTO, String filePath, String originalFileName, byte[] fileBytes) {
		int gIndex = groupDTO.getgIndex();

		if (filePath != null && originalFileName != null) {
			BufferedOutputStream outputStream = null;
			try {
				outputStream = new BufferedOutputStream(
						new FileOutputStream(new File(filePath, groupDTO.getgIndex() + ".jpg")));
				outputStream.write(fileBytes);
				outputStream.close();
				groupDTO.setgPhoto(Integer.toString(gIndex));
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
			groupDTO.setgPhoto("default");
		}

		return groupDTO;
	}

	@Override
	public Map<String, Object> main(int gIndex) {
		Map<String, Object> retMap = new HashMap<String, Object>();
		GroupDTO groupDTO = null;
		List<GroupCommentDTO> groupCommentDTOList = null;

		groupDTO = groupDAO.getGroupDTO2(gIndex);
		groupCommentDTOList = groupDAO.getGroupComments(gIndex);
		retMap.put("groupDTO", groupDTO);
		retMap.put("groupCommentDTOList", groupCommentDTOList);

		return retMap;
	}

	@Override
	public MemberStatDTO apply(int gIndex, String uId) {
		MemberStatDTO memberStatDTO = new MemberStatDTO();
		memberStatDTO.setgIndex(gIndex);
		memberStatDTO.setuId(uId);
		int result = 0;

		result = memberDAO.applyGroup(memberStatDTO);
		memberStatDTO = memberDAO.getMemberStatDTO(uId);

		return memberStatDTO;
	}

	@Override
	public MemberStatDTO cancel(String uId,int gIndex, int accept) {
		int result = 0;
		MemberStatDTO memberStatDTO = null;

		memberDAO.cancelApply(uId);
		if(accept==1) {
			groupDAO.decreaseCurrentNum(gIndex);
		}
		memberStatDTO = memberDAO.getMemberStatDTO(uId);

		return memberStatDTO;
	}
	
	@Override
	public int kick(String uId, int gIndex) {
		int result=0;
		
		result=memberDAO.cancelApply(uId);
		result=groupDAO.decreaseCurrentNum(gIndex);
		
		return result;
	}

	@Override
	public int comment(GroupCommentDTO groupCommentDTO) {
		int result = 0;

		result = groupDAO.writeComment(groupCommentDTO);

		return result;
	}

	@Override
	public int deleteComment(int gIndex, int gcIndex) {
		int result = 0;
		GroupCommentDTO groupCommentDTO = new GroupCommentDTO();
		groupCommentDTO.setgIndex(gIndex);
		groupCommentDTO.setGcIndex(gcIndex);

		result = groupDAO.deleteComment(groupCommentDTO);

		return result;
	}

	@Override
	public GroupDTO manage(int gIndex) {
		GroupDTO groupDTO = null;

		groupDTO = groupDAO.getGroupDTO2(gIndex);

		return groupDTO;
	}

	@Override
	public GroupDTO modifyForm(int gIndex) {
		GroupDTO groupDTO = null;

		groupDTO = groupDAO.getGroupDTO2(gIndex);

		return groupDTO;
	}

	@Override
	public GroupDTO modify(GroupDTO groupDTO, String filePath, String originalFileName, byte[] fileBytes) {
		int result = 0;
		int gIndex = groupDTO.getgIndex();

		groupDTO = fileUploadMethod(groupDTO, filePath, originalFileName, fileBytes);
		result = groupDAO.updateGroup(groupDTO);
		groupDTO = groupDAO.getGroupDTO2(gIndex);

		return groupDTO;
	}

	@Override
	public List<Map<String, Object>> lineup(int gIndex, int accept) {
		Map<String, Object> retMap = new HashMap<String, Object>();
		List<Map<String, Object>> lineupList = null;

		if (accept == 0) {
			lineupList = memberDAO.getApplyList(gIndex);
		} else if (accept == 1) {
			lineupList = memberDAO.getAcceptList(gIndex);
		}
		return lineupList;
	}

	@Override
	public int accept(String uId, int gIndex) {
		int result = 0;
				
		result = memberDAO.applyAccept(uId);
		result = groupDAO.increaseCurrentNum(gIndex);

		return result;
	}

	@Override
	public int refuse(String uId, int gIndex) {
		int result = 0;

		result = memberDAO.cancelApply(uId);

		return result;
	}

	@Override
	public int startGroup(int gIndex) {
		int result = 0;

		result = memberDAO.getDefaultApplyMembers(gIndex);
		result = memberDAO.increaseStudyCount(gIndex);
		result = groupDAO.progressStart(gIndex);

		return result;
	}

	@Override
	public int deleteGroup(int gIndex, String uId, String uPw) {
		int result = 0;
		Map<String, Object> paramMap = new HashMap<String, Object>();
		MemberInfoDTO memberInfoDTO = null;
		String hashedPassword = memberDAO.getPassword(uId);

		if (hashingComponent.matchByBcrypt(uPw, hashedPassword)) {
			memberInfoDTO = memberDAO.getMemberInfoDTO(uId);
		} else {
			return -1;
		}
		result = memberDAO.getDefaultAcceptMembers(gIndex);
		result = memberDAO.getDefaultApplyMembers(gIndex);
		result = groupDAO.deleteGroup(gIndex);
		boardDAO.deleteBoardTable(gIndex);		
		replyDAO.deleteReplyTable(gIndex);
//		quizDAO.deleteQuizTable(gIndex);

		return result;
	}

}
