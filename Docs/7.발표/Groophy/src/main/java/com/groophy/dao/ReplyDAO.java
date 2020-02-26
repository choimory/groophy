package com.groophy.dao;

import java.util.List;
import java.util.Map;

import com.groophy.dto.BoardKeyDTO;
import com.groophy.dto.GroupKeyDTO;
import com.groophy.dto.ReplyDTO;

public interface ReplyDAO {
	
	public void createReplyTable(int gIndex);
	
	public void deleteReplyTable(int gIndex);
	
	public void register(ReplyDTO dto) throws Exception;
	
	public void modify(ReplyDTO dto) throws Exception;
	
	public void delete(Map<String,Object> paramMap) throws Exception;
	
	public List<ReplyDTO> listPage(BoardKeyDTO keydto) throws Exception;
	
	public int count(BoardKeyDTO keydto) throws Exception;
	
	public int getBno(Map<String,Object> paramMap) throws Exception;
	
	public List<GroupKeyDTO> listCity(String province) throws Exception;
	
}
