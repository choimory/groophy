package com.groophy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groophy.dao.BoardDAO;
import com.groophy.dao.StudyDAO;
import com.groophy.dto.BoardDTO;
import com.groophy.dto.BoardKeyDTO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO boardDAO;
	@Autowired
	private StudyDAO studyDAO;
	
	public void setBoardDAO(BoardDAO boardDAO) {
		this.boardDAO = boardDAO;
	}	
	public void setStudyDAO(StudyDAO studyDAO) {
		this.studyDAO = studyDAO;
	}


	@Override
	public void register(BoardDTO dto) throws Exception {
		boardDAO.register(dto);
	}

	@Override
	public BoardDTO read(BoardKeyDTO keydto) throws Exception {
		boardDAO.updateViewCnt(keydto);
		return boardDAO.read(keydto);
	}

	@Override
	public void modify(BoardDTO dto) throws Exception {
		boardDAO.modify(dto);
	}

	@Override
	public void delete(BoardKeyDTO keydto) throws Exception {
		boardDAO.delete(keydto);
	}

	@Override
	public List<BoardDTO> list(BoardKeyDTO keydto) throws Exception {
		return boardDAO.list(keydto);
	}

	@Override
	public int totalCount(BoardKeyDTO keydto) throws Exception {
		return boardDAO.totalCount(keydto);
	}
	
	public String checkIfLeader(int gIndex) {
		return studyDAO.checkifleader(gIndex);
	}

}
