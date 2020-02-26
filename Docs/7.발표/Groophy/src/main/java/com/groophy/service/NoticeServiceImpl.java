package com.groophy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groophy.dao.NoticeDAO;
import com.groophy.dto.BoardDTO;
import com.groophy.dto.BoardKeyDTO;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	public void setBoardDAO(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}

	@Override
	public void register(BoardDTO dto) throws Exception {
		noticeDAO.register(dto);
	}

	@Override
	public BoardDTO read(int bIndex) throws Exception {
		noticeDAO.updateViewCnt(bIndex);
		return noticeDAO.read(bIndex);
	}

	@Override
	public void modify(BoardDTO dto) throws Exception {
		noticeDAO.modify(dto);
	}

	@Override
	public void delete(int bIndex) throws Exception {
		noticeDAO.delete(bIndex);
	}

	@Override
	public List<BoardDTO> list(BoardKeyDTO keydto) throws Exception {
		return noticeDAO.list(keydto);
	}

	@Override
	public int totalCount(BoardKeyDTO keydto) throws Exception {
		return noticeDAO.totalCount(keydto);
	}

}
