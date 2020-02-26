package com.groophy.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.groophy.dto.BoardDTO;
import com.groophy.dto.GroupDTO;
import com.groophy.dto.GroupKeyDTO;

public interface GroophyService {
	public Map<String,Object> searchMain(GroupKeyDTO groupKeyDTO);
 	public Map<String,Object> search(GroupKeyDTO groupKeyDTO);
	public Map<String,Object> createGroup(GroupDTO groupDTO, String filePath, String originalFileName,byte[] fileBytes);
	public Map<String,Object> list();	
	public int getRecordCount(GroupKeyDTO groupKeyDTO);
}
