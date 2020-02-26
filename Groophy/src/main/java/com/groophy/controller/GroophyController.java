package com.groophy.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.groophy.dto.BoardDTO;
import com.groophy.dto.GroupDTO;
import com.groophy.dto.GroupKeyDTO;
import com.groophy.dto.MemberStatDTO;
import com.groophy.dto.PageMaker;
import com.groophy.service.GroophyService;

@Controller
@SessionAttributes({"memberInfoDTO","memberStatDTO"})
public class GroophyController {
	
	@Resource(name = "groophyService")
	private GroophyService groophyService;

	public void setGroophyService(GroophyService groophyService) {
		this.groophyService = groophyService;
	}
	
	private static final Logger logger = LoggerFactory.getLogger(GroophyController.class);

	// 인덱스
	@RequestMapping({ "/", "/main" })
	public String home(Model model) {
		String viewPage = "Groophy/main";
		Map<String, Object> retMap = null;
		List<BoardDTO> noticeList = null;
		List<GroupDTO> groupDTOList = null;

		retMap = groophyService.list();
		noticeList=(List<BoardDTO>)retMap.get("noticeList");
		groupDTOList=(List<GroupDTO>)retMap.get("groupDTOList");
		
		model.addAttribute("list", noticeList);
		model.addAttribute("groupDTOList", groupDTOList);
		model.addAttribute("title", "메인");
		model.addAttribute("topMenu", "Home");
		model.addAttribute("main", "main");
		return viewPage;
	}

	@RequestMapping(value = "/search_main", method = RequestMethod.GET)
	public String searchForm(@ModelAttribute("groupKeyDTO") GroupKeyDTO groupKeyDTO,PageMaker pageMaker,Model model) {
		logger.info(groupKeyDTO.toString()+", GET, === RECORD count : "+groophyService.getRecordCount(groupKeyDTO));
		String viewPage = "Groophy/search";
		List<GroupDTO> groupDTOList = null;
		Map<String, Object> retMap = null;

		retMap = groophyService.searchMain(groupKeyDTO);

		groupDTOList = (List<GroupDTO>) retMap.get("groupDTOList");
		groupKeyDTO = (GroupKeyDTO) retMap.get("groupKeyDTO");
		
		pageMaker.setKeydto(groupKeyDTO);
		pageMaker.setTotalCount(groophyService.getRecordCount(groupKeyDTO));
		
		model.addAttribute("title", "그룹 검색");
		model.addAttribute("explain", "모집중인 스터디그룹을 검색하실 수 있습니다");
		model.addAttribute("topMenu", "search");
		model.addAttribute("search_main", 1);
		model.addAttribute("groupDTOList", groupDTOList);
		model.addAttribute("groupKeyDTO", groupKeyDTO);
		model.addAttribute("pageMaker", pageMaker);
		return viewPage;
	}

	// 검색
	// TODO
	@RequestMapping(value = "/search")
	public String search(@ModelAttribute("groupKeyDTO") GroupKeyDTO groupKeyDTO,PageMaker pageMaker, Model model) {
		logger.info(groupKeyDTO.toString()+", POST, === RECORD count : "+groophyService.getRecordCount(groupKeyDTO));
		String viewPage = "Groophy/search";
		int groupCount = 0;
		List<GroupDTO> groupDTOList = null;
		Map<String, Object> retMap = null;

		retMap = groophyService.search(groupKeyDTO);
		groupDTOList = (List<GroupDTO>) retMap.get("groupDTOList");
		groupKeyDTO = (GroupKeyDTO) retMap.get("groupKeyDTO");
		groupCount= groophyService.getRecordCount(groupKeyDTO)	;
		pageMaker.setKeydto(groupKeyDTO);
		pageMaker.setTotalCount(groupCount);

		model.addAttribute("groupDTOList", groupDTOList);
		model.addAttribute("groupKeyDTO", groupKeyDTO);
		model.addAttribute("title", "검색결과");
		model.addAttribute("explain", groupCount + "개의 그룹이 검색되었습니다");
		model.addAttribute("topMenu", "search");
		model.addAttribute("pageMaker", pageMaker);
		return viewPage;
	}

	// 그룹개설
	@RequestMapping(value = "/create_group", method = RequestMethod.GET)
	public String createGroupForm(Model model) {
		String viewPage = "Groophy/create_group";

		model.addAttribute("title", "그룹개설");
		return viewPage;
	}

	// 그룹개설>확인
	@RequestMapping(value = "/create_group", method = RequestMethod.POST)
	public String createGroup(GroupDTO groupDTO, Model model, @RequestParam("checkboxes") String[] checkboxes,
			@RequestParam("gFile") MultipartFile photoFile, HttpServletRequest req) {
		String viewPage = "redirect:group/main?gIndex=";
		Map<String, Object> retMap = null;
		MemberStatDTO memberStatDTO = null;
		int gIndex = 0;
		String checkbox = "";
		String filePath = null;
		String originalFileName = null;
		byte[] fileBytes = null;

		for (String tmp : checkboxes) {
			checkbox += tmp;
		}
		groupDTO.setgStudyOfWeek(checkbox);

		if (!photoFile.isEmpty()) {
			try {
				filePath = req.getSession().getServletContext().getRealPath("") + "resources/assets/img/group_profile/";
				fileBytes = photoFile.getBytes();
				originalFileName = photoFile.getOriginalFilename();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		retMap = groophyService.createGroup(groupDTO, filePath, originalFileName, fileBytes);
		groupDTO = (GroupDTO) retMap.get("groupDTO");
		memberStatDTO = (MemberStatDTO) retMap.get("memberStatDTO");

		gIndex = groupDTO.getgIndex();
		viewPage += gIndex;

		model.addAttribute("memberStatDTO", memberStatDTO);
		return viewPage;
	}

}
