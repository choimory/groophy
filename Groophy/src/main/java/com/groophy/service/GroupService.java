package com.groophy.service;

import java.util.List;
import java.util.Map;

import com.groophy.dto.GroupCommentDTO;
import com.groophy.dto.GroupDTO;
import com.groophy.dto.MemberStatDTO;

public interface GroupService {
	public Map<String,Object> main(int gIndex);
	public MemberStatDTO apply(int gIndex, String uId);
	public MemberStatDTO cancel(String uId, int gIndex, int accept);
	public int kick(String uId, int gIndex);
	public int comment(GroupCommentDTO groupCommentDTO);
	public int deleteComment(int gIndex, int gcIndex);
	public GroupDTO manage(int gIndex);
	public GroupDTO modifyForm(int gIndex);
	public GroupDTO modify(GroupDTO groupDTO,String filePath,String originalFileName,byte[] fileBytes);
	public List<Map<String,Object>> lineup(int gIndex, int accept);
	public int accept(String uId, int gIndex);
	public int refuse(String uId, int gIndex);
	public int deleteGroup(int gIndex, String uId, String uPw);	
	public int startGroup(int gIndex);
}
