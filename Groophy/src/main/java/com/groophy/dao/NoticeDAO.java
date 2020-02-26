package com.groophy.dao;

import java.util.List;
import java.util.Map;

import com.groophy.dto.BoardDTO;
import com.groophy.dto.BoardKeyDTO;

public interface NoticeDAO {
	
	public void register(BoardDTO dto) throws Exception;
	
	public BoardDTO read(int bIndex) throws Exception;
	
	public void modify(BoardDTO dto) throws Exception;
	
	public void delete(int bIndex) throws Exception;
	
	public List<BoardDTO> list(BoardKeyDTO keydto) throws Exception;
	
	public int totalCount(BoardKeyDTO keydto) throws Exception;
	
	public void updateReplyCnt(Map<String,Object> paramMap) throws Exception;
	
	public void updateViewCnt(int bIndex) throws Exception;
	
	public List<BoardDTO> mainList();
	
}
