package com.groophy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.groophy.dto.BoardKeyDTO;
import com.groophy.dto.GroupKeyDTO;
import com.groophy.dto.PageMaker;
import com.groophy.dto.ReplyDTO;
import com.groophy.service.ReplyService;

@RestController
@RequestMapping("/replies")
public class ReplyController {

	@Autowired
	private ReplyService service;

	@RequestMapping(value = "", method = RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody ReplyDTO dto) {

		ResponseEntity<String> entity = null;
		try {
			service.register(dto);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/{rno}/{gIndex}", method = { RequestMethod.PUT, RequestMethod.PATCH })
	public ResponseEntity<String> modify(@PathVariable("rno") int rno,@PathVariable("gIndex") int gIndex, @RequestBody ReplyDTO dto) {
		ResponseEntity<String> entity = null;
		try {
			dto.setgIndex(gIndex);
			dto.setRno(rno);
			service.modify(dto);

			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;

	}

	@RequestMapping(value = "/{rno}/{gIndex}", method = RequestMethod.DELETE)
	public ResponseEntity<String> delete(@PathVariable("rno") int rno,@PathVariable("gIndex") int gIndex) {
		ResponseEntity<String> entity = null;
		try {
			Map<String, Object> paramMap = new HashMap<String, Object>();
			paramMap.put("rno", rno);
			paramMap.put("gIndex", gIndex);
			
			service.delete(paramMap);
			
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/{bno}/{gIndex}/{page}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> listPage(@PathVariable("bno") int bno,@PathVariable("gIndex") int gIndex,
			@PathVariable("page") int page, BoardKeyDTO keydto, PageMaker pageMaker) {
		ResponseEntity<Map<String, Object>> entity = null;
		try {
			keydto.setgIndex(gIndex);
			keydto.setbIndex(bno);
			keydto.setPage(page);
			pageMaker.setKeydto(keydto);

			Map<String, Object> map = new HashMap<String, Object>();
			List<ReplyDTO> list = service.listPage(keydto);

			map.put("list", list);
			int replyCount = service.count(keydto);
			pageMaker.setTotalCount(replyCount);
			map.put("pageMaker", pageMaker);

			entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
		}
		return entity;

	}
	
	@RequestMapping(value = "/select/{province}", method = RequestMethod.GET)
	public ResponseEntity<Map<String,Object>> provinceSelect(@PathVariable("province") String province){
		ResponseEntity<Map<String,Object>> entity=null;
		try {
			Map<String,Object> map = new HashMap<String,Object>();
			List<GroupKeyDTO> list = service.listCity(province);
			
			map.put("list", list);
			entity = new ResponseEntity<Map<String,Object>>(map,HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String,Object>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
		
	}
}
