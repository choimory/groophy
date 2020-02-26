package com.groophy.dao;

import java.util.List;

import com.groophy.dto.GroupCommentDTO;
import com.groophy.dto.GroupDTO;
import com.groophy.dto.GroupKeyDTO;

public interface GroupDAO {
	public List<GroupDTO> getMainGroup();
	public List<GroupDTO> getAllGroup(GroupKeyDTO groupKeyDTO);
	public List<GroupDTO> getSearchGroup(GroupKeyDTO groupKeyDTO);
	public int createGroup(GroupDTO groupDTO);
//	public int createGroupComment(GroupDTO groupDTO);
	public int getGroupIndex(String uId);
	public GroupDTO getGroupDTO(String uId);
	public GroupDTO getGroupDTO2(int gIndex);
	public List<GroupCommentDTO> getGroupComments(int gIndex);
	public int writeComment(GroupCommentDTO groupCommentDTO);
	public int deleteComment(GroupCommentDTO groupCommentDTO);
	public int updateGroup(GroupDTO groupDTO);
	public int increaseCurrentNum(int gIndex);
	public int progressStart(int gIndex);
	public int deleteGroup(int gIndex);
	public int getRecordCount(GroupKeyDTO groupKeyDTO);
	public int updateGroupPhoto(GroupDTO groupDTO);
	public int decreaseCurrentNum(int gIndex);
}
