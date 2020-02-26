package com.groophy.service;

import java.util.List;
import com.groophy.dto.BoardDTO;
import com.groophy.dto.BoardKeyDTO;

public interface BoardService {
	
	public void register(BoardDTO dto) throws Exception;
	
	public BoardDTO read(BoardKeyDTO keydto) throws Exception;
	
	public void modify(BoardDTO dto) throws Exception;
	
	public void delete(BoardKeyDTO keydto) throws Exception;
	
	public List<BoardDTO> list(BoardKeyDTO keydto) throws Exception;
	
	public int totalCount(BoardKeyDTO keydto) throws Exception;
	
	public String checkIfLeader(int gIndex);
	
}
