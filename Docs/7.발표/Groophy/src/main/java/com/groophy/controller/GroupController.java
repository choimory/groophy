package com.groophy.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.groophy.dto.GroupCommentDTO;
import com.groophy.dto.GroupDTO;
import com.groophy.dto.MemberStatDTO;
import com.groophy.service.GroupService;

@Controller
@RequestMapping("/group")
@SessionAttributes({ "memberStatDTO" })
public class GroupController {
	@Resource(name = "groupService")
	private GroupService groupService;

	public void setGroupService(GroupService groupService) {
		this.groupService = groupService;
	}

	// 모집그룹>입장하기
	// gIndex를 조건으로 group select
	@RequestMapping("/main")
	public String main(int gIndex, Model model) {
		String viewPage = "Group/group_main";
		Map<String, Object> retMap = null;
		GroupDTO groupDTO = null;
		List<GroupCommentDTO> groupCommentDTOList = null;

		retMap = groupService.main(gIndex);
		groupDTO = (GroupDTO) retMap.get("groupDTO");
		if(groupDTO.getgProgress()==1) {
			return "redirect:/study/";
		}
		
		
		String newIntroduce=groupDTO.getgIntroduce().replace("\r\n","<br>");
		groupDTO.setgIntroduce(newIntroduce);
		
		groupCommentDTOList = (List<GroupCommentDTO>) retMap.get("groupCommentDTOList");
		if (groupCommentDTOList.size() == 0) {
			groupCommentDTOList = null;
		}

		model.addAttribute("groupDTO", groupDTO);
		model.addAttribute("groupCommentDTOList", groupCommentDTOList);
		model.addAttribute("title", groupDTO.getgName());
		model.addAttribute("explain", groupDTO.getgName() + "의 스터디멤버 모집페이지입니다");
		model.addAttribute("topMenu", "search");
		return viewPage;
	}

	// 모집그룹>입장하기>신청하기
	@RequestMapping("/apply")
	public String apply(int gIndex, String uId, Model model) {
		String viewPage = "redirect:/group/main?gIndex=" + gIndex;
		MemberStatDTO memberStatDTO = null;

		memberStatDTO = groupService.apply(gIndex, uId);

		model.addAttribute("memberStatDTO", memberStatDTO);
		return viewPage;
	}

	// 모집그룹>입장하기>취소하기
	@RequestMapping("/cancel")
	public String cancel(String uId, int gIndex, int accept, Model model) {
		String viewPage = "redirect:/group/main?gIndex=" + gIndex;
		MemberStatDTO memberStatDTO = null;

		memberStatDTO = groupService.cancel(uId, gIndex, accept);

		model.addAttribute("memberStatDTO", memberStatDTO);
		return viewPage;
	}
	
	//추방하기
	@RequestMapping(value="/kick")
	public String kick(String uId, int gIndex,HttpServletRequest req) {
		String beforeUrl = req.getHeader("referer");
		beforeUrl = beforeUrl.substring(29);
		System.out.println(beforeUrl);
		String viewPage="redirect:"+beforeUrl;
		int result=0;
		
		result=groupService.kick(uId, gIndex);
		
		return viewPage;
	}
	
	// 모집그룹>입장하기>댓글입력
	@RequestMapping(value = "/comment", method = RequestMethod.POST)
	public String comment(GroupCommentDTO groupCommentDTO) {
		String viewPage = "redirect:/group/main?gIndex=" + groupCommentDTO.getgIndex();

		groupService.comment(groupCommentDTO);

		return viewPage;
	}

	// 모집그룹>입장하기>댓글삭제
	@RequestMapping(value = "/delete_comment"/* , method = RequestMethod.POST */)
	public String deleteComment(int gcIndex, int gIndex) {
		String viewPage = "redirect:/group/main?gIndex=" + gIndex;

		groupService.deleteComment(gIndex, gcIndex);

		return viewPage;
	}

	// 모집그룹>입장하기>관리하기
	// 모집그룹>입장하기>관리하기>그룹정보
	@RequestMapping(value = { "/manage" })
	public String manage(int gIndex, Model model) {
		String viewPage = "Group/group_manage_main";
		GroupDTO groupDTO = null;

		groupDTO = groupService.manage(gIndex);

		model.addAttribute("title", "그룹관리");
		model.addAttribute("explain", "그룹관리 페이지입니다");
		model.addAttribute("topMenu", "search");

		String newIntroduce=groupDTO.getgIntroduce().replace("\r\n","<br>");
		groupDTO.setgIntroduce(newIntroduce);
		
		model.addAttribute("groupDTO", groupDTO);
		return viewPage;
	}

	@RequestMapping(value = { "/modify" }, method = RequestMethod.GET)
	public String modifyForm(int gIndex, Model model) {
		String viewPage = "Group/group_manage_modify";
		GroupDTO groupDTO = null;

		groupDTO = groupService.modifyForm(gIndex);

		model.addAttribute("groupDTO", groupDTO);
		return viewPage;
	}

	// 모집그룹>입장하기>관리하기>그룹정보수정>확인
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modify(GroupDTO groupDTO, @RequestParam("checkboxes") String[] checkBoxes, Model model, @RequestParam("gFile")MultipartFile photoFile, HttpServletRequest req) {
		String viewPage = "redirect:/group/manage?gIndex=" + groupDTO.getgIndex();
		String checkbox = "";
		String filePath=null;
		String originalFileName=null;
		byte[] fileBytes=null;
		
		for (String tmp : checkBoxes) {
			checkbox += tmp;
		}
		groupDTO.setgStudyOfWeek(checkbox);

		if(!photoFile.isEmpty()) {
			try {
				filePath=req.getSession().getServletContext().getRealPath("")+"resources/assets/img/group_profile/";
				fileBytes=photoFile.getBytes();
				originalFileName=photoFile.getOriginalFilename();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		groupDTO = groupService.modify(groupDTO, filePath,originalFileName,fileBytes);

		model.addAttribute("groupDTO", groupDTO);
		return viewPage;
	}

	// 모집그룹>입장하기>관리하기>명단
	@RequestMapping("/lineup")
	public String lineUp(int gIndex, int accept, Model model) {
		String viewPage = "Group/group_manage_lineup_";
		List<Map<String, Object>> lineupList = null;

		if (accept == 0) {
			viewPage += "apply";
			model.addAttribute("title", "신청명단");
			model.addAttribute("explain", "신청자를 수락/거절할 수 있는 페이지 입니다");
		} else if (accept == 1) {
			viewPage += "accept";
			model.addAttribute("title", "수락명단");
			model.addAttribute("explain", "수락한 멤버들을 확인하거나 수락을 취소할 수 있는 페이지 입니다");
		}

		lineupList = groupService.lineup(gIndex, accept);
		if(lineupList.size()==0) {
			lineupList=null;
		}
				
		model.addAttribute("lineupList", lineupList);
		return viewPage;
	}

	// 모집그룹>입장하기>관리하기>신청자명단>수락
	@RequestMapping("/accept")
	public String accept(String uId, int gIndex,Model model) {
		String viewPage = "redirect:/group/lineup?gIndex=" + gIndex + "&accept=0";
		int result=0;
		
		result=groupService.accept(uId, gIndex);

		return viewPage;
	}

	// 모집그룹>입장하기>관리하기>신청자명단>거절
	@RequestMapping("/refuse")
	public String refuse(String uId, int gIndex) {
		String viewPage = "redirect:/group/lineup?gIndex=" + gIndex + "&accept=0";

		groupService.refuse(uId, gIndex);

		return viewPage;
	}

	// 모집그룹>입장하기>관리하기>진행시작
	@RequestMapping("/start")
	public String start(int gIndex, Model model) {
		String viewPage = "redirect:/study/";
		int result = 0;

		result = groupService.startGroup(gIndex);

		model.addAttribute("topMenu", "mygroup");
		return viewPage;
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteForm() {
		String viewPage = "Group/group_manage_delete";

		return viewPage;
	}

	// 모집그룹>입장하기>관리하기>그룹폐쇄
	//TODO
	@RequestMapping(value = "/delete_group", method = RequestMethod.POST)
	public String delete(int gIndex, String uId, String uPw, Model model) {
		String viewPage = "Groophy/main";
		int result = 0;
		result = groupService.deleteGroup(gIndex, uId, uPw);
		
		if (result == -1) {
			model.addAttribute("errorCode", 1);
			viewPage="Group/group_manage_delete";
		}
		
		model.addAttribute("topMenu", "Home");
		return viewPage;
	}
}
