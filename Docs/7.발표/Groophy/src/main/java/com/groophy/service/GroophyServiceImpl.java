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
import com.groophy.dao.NoticeDAO;
import com.groophy.dao.QuizDAO;
import com.groophy.dto.BoardDTO;
import com.groophy.dto.GroupDTO;
import com.groophy.dto.GroupKeyDTO;
import com.groophy.dto.MemberStatDTO;
import com.groophy.dao.ReplyDAO;

public class GroophyServiceImpl implements GroophyService {
	private GroupDAO groupDAO;
	private MemberDAO memberDAO;
	
	@Autowired
	private ReplyDAO replyDAO;	
	@Autowired
	private BoardDAO boardDAO;
	@Autowired
	private NoticeDAO noticeDAO;
	
	private QuizDAO quizDAO;

	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	public void setBoardDAO(BoardDAO boardDAO) {
		this.boardDAO = boardDAO;
	}

	public void setQuizDAO(QuizDAO quizDAO) {
		this.quizDAO = quizDAO;
	}

	public void setGroupDAO(GroupDAO groupDAO) {
		this.groupDAO = groupDAO;
	}

	/*public GroupKeyDTO getFirstIndex(GroupKeyDTO groupKeyDTO) {
		int page = groupKeyDTO.getgPage();
		int pageSize = groupKeyDTO.getgPageSize();

		if (page == 0) {
			page = 1;
			groupKeyDTO.setgPage(1);
		}
		if (pageSize == 0) {
			pageSize = 20;
			groupKeyDTO.setgPageSize(10);
		}
		groupKeyDTO.setgFirstIndex((page - 1) * pageSize);

		return groupKeyDTO;
	}

	public GroupKeyDTO getLastPage(GroupKeyDTO groupKeyDTO) {
		int recordCount = 0;
		int pageSize = groupKeyDTO.getgPageSize();
		double lastPageDb = 0.0;
		int lastPage = 0;

		recordCount = groupDAO.getRecordCount();
		if (recordCount > pageSize) {
			lastPageDb = (double) recordCount / (double) pageSize;
			lastPageDb = Math.ceil(lastPageDb);
			lastPage = (int) lastPageDb;
			groupKeyDTO.setgLastPage((int) lastPageDb);
		} else if (recordCount < pageSize) {
			lastPage = 1;
			groupKeyDTO.setgLastPage(1);
		}

		return groupKeyDTO;
	}*/

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
	public Map<String, Object> searchMain(GroupKeyDTO groupKeyDTO) {
		Map<String, Object> retMap = new HashMap<String, Object>();
		List<GroupDTO> groupDTOList = null;

//		groupKeyDTO = getFirstIndex(groupKeyDTO);
		groupDTOList = groupDAO.getAllGroup(groupKeyDTO);
//		groupKeyDTO = getLastPage(groupKeyDTO);

		retMap.put("groupDTOList", groupDTOList);
		retMap.put("groupKeyDTO", groupKeyDTO);
		return retMap;
	}

	@Override
	public Map<String, Object> search(GroupKeyDTO groupKeyDTO) {
		List<GroupDTO> groupDTOList = null;
		Map<String, Object> retMap = new HashMap<String, Object>();

//		groupKeyDTO = getFirstIndex(groupKeyDTO);
		groupDTOList = groupDAO.getSearchGroup(groupKeyDTO);
//		groupKeyDTO = getLastPage(groupKeyDTO);

		retMap.put("groupDTOList", groupDTOList);
		retMap.put("groupKeyDTO", groupKeyDTO);

		return retMap;
	}

	@Override
	public Map<String, Object> createGroup(GroupDTO groupDTO, String filePath, String originalFileName,
			byte[] fileBytes) {
		Map<String, Object> retMap = new HashMap<String, Object>();
		int result = 0;
		int gIndex = 0;
		String uId = groupDTO.getuId();
		MemberStatDTO memberStatDTO = new MemberStatDTO();
		memberStatDTO.setuId(uId);

		result = groupDAO.createGroup(groupDTO);
		gIndex = groupDAO.getGroupIndex(uId);
		groupDTO.setgIndex(gIndex);
		groupDTO = fileUploadMethod(groupDTO, filePath, originalFileName, fileBytes);
		result = groupDAO.updateGroupPhoto(groupDTO);
		memberStatDTO.setgIndex(gIndex);
		result = memberDAO.updateLeaderStat(memberStatDTO);
		memberStatDTO = memberDAO.getMemberStatDTO(uId);
		groupDTO = groupDAO.getGroupDTO(uId);

		 boardDAO.createBoardTable(gIndex);
		 replyDAO.createReplyTable(gIndex);
		// quizDAO.createQuizTable(paramMap);

		retMap.put("groupDTO", groupDTO);
		retMap.put("memberStatDTO", memberStatDTO);

		return retMap;
	}
	
	@Override
	public Map<String,Object> list() {
		Map<String,Object> retMap=new HashMap<String,Object>();
		List<BoardDTO> noticeList=null;
		List<GroupDTO> groupDTOList=null;
		
		noticeList=noticeDAO.mainList();
		groupDTOList=groupDAO.getMainGroup();
		
		retMap.put("noticeList", noticeList);
		retMap.put("groupDTOList", groupDTOList);
		return retMap;
	}
	
	@Override
	public int getRecordCount(GroupKeyDTO groupKeyDTO) {
		return groupDAO.getRecordCount(groupKeyDTO);
	}

}
