package com.groophy.dao;

import java.util.List;
import java.util.Map;

import com.groophy.dto.BoardDTO;
import com.groophy.dto.BoardKeyDTO;

public interface BoardDAO {
	
	public void createBoardTable(int gIndex);
	
	public void deleteBoardTable(int gIndex);
	
	public void register(BoardDTO dto) throws Exception;
	
	public BoardDTO read(BoardKeyDTO keydto) throws Exception;
	
	public void modify(BoardDTO dto) throws Exception;
	
	public void delete(BoardKeyDTO keydto) throws Exception;
	
	public List<BoardDTO> list(BoardKeyDTO keydto) throws Exception;
	
	public int totalCount(BoardKeyDTO keydto) throws Exception;
	
	public void updateReplyCnt(Map<String,Object> paramMap) throws Exception;
	
	public void updateViewCnt(BoardKeyDTO keydto) throws Exception;
	
}
