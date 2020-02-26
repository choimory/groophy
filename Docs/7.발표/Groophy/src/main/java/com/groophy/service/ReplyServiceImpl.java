package com.groophy.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groophy.dao.BoardDAO;
import com.groophy.dao.ReplyDAO;
import com.groophy.dto.BoardKeyDTO;
import com.groophy.dto.GroupKeyDTO;
import com.groophy.dto.ReplyDTO;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	private ReplyDAO replyDAO;
	
	@Autowired
	private BoardDAO boardDAO;
	
	public void setReplyDAO(ReplyDAO replyDAO) {
		this.replyDAO = replyDAO;
	}
	
	@Override
	public void register(ReplyDTO dto) throws Exception {
		Map<String,Object> paramMap = new HashMap<String,Object>();
		paramMap.put("gIndex", dto.getgIndex());
		paramMap.put("bno",dto.getBno());
		paramMap.put("amount",1);
		
		replyDAO.register(dto);
		boardDAO.updateReplyCnt(paramMap);
	}

	@Override
	public void modify(ReplyDTO dto) throws Exception {
		replyDAO.modify(dto);
	}

	@Override
	public void delete(Map<String,Object> param_map) throws Exception {
		
		int bno=replyDAO.getBno(param_map);
		
		replyDAO.delete(param_map);
		
		Map<String,Object> paramMap = new HashMap<String,Object>();
		paramMap.put("gIndex", param_map.get("gIndex"));
		paramMap.put("bno",bno);
		paramMap.put("amount",-1);
		
		boardDAO.updateReplyCnt(paramMap);
	}

	@Override
	public List<ReplyDTO> listPage(BoardKeyDTO keydto) throws Exception {
		return replyDAO.listPage(keydto);
	}

	@Override
	public int count(BoardKeyDTO keydto) throws Exception {
		return replyDAO.count(keydto);
	}

	@Override
	public List<GroupKeyDTO> listCity(String province) throws Exception {
		return replyDAO.listCity(province);
	}

}
