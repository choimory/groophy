package com.groophy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.groophy.dto.GroupDTO;
import com.groophy.dto.MemberStatDTO;
import com.groophy.service.AdminService;
import com.groophy.service.GroupService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private AdminService adminService;
	HttpServletRequest req;

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	
	@RequestMapping("/gotomain")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		/*HttpSession session = req.getSession();
		MemberStatDTO minfodto = (MemberStatDTO)session.getAttribute("memberInfoDTO");
		String uId = minfodto.getuId();
		int checkadmin = 0;
		checkadmin = adminService.checkifadmin(uId);
		if(checkadmin==0)
		{
			System.out.println("어드민 인증에 실패했습니다");
			return "Groophy/main";
		}else {*/
			mav.addObject("title", "어드민 홈");
			mav.addObject("explain", "어드민을 관리하거나, 사이트의 각종 정보들을 수정할 수 있습니다");
			System.out.println("어드민 인증에 성공했습니다");
			mav.setViewName("Admin/admin_main");
			return mav;
		//}
	}
	
	@RequestMapping("/gotoban")
	public ModelAndView gotoban() {
		ModelAndView mav = new ModelAndView();
		/*HttpSession session = req.getSession();
		MemberStatDTO minfodto = (MemberStatDTO)session.getAttribute("memberInfoDTO");
		String uId = minfodto.getuId();
		int checkadmin = 0;
		checkadmin = adminService.checkifadmin(uId);
		if(checkadmin==0)
		{
			System.out.println("어드민 인증에 실패했습니다");
			return "Groophy/main";
		}else {*/
			mav.addObject("title", "회원 밴");
			mav.addObject("explain", "규율을 어긴 회원을 밴할 수 있습니다");
			mav.setViewName("Admin/admin_ban");
			return mav;
		//}
	}
	
	@RequestMapping("/gotoclose")
	public ModelAndView gotoclose() {
		ModelAndView mav = new ModelAndView();
		/*HttpSession session = req.getSession();
		MemberStatDTO minfodto = (MemberStatDTO)session.getAttribute("memberInfoDTO");
		String uId = minfodto.getuId();
		int checkadmin = 0;
		checkadmin = adminService.checkifadmin(uId);
		if(checkadmin==0)
		{
			System.out.println("어드민 인증에 실패했습니다");
			return "Groophy/main";
		}else {*/
			mav.addObject("title", "그룹 강제 폐쇄");
			mav.addObject("explain", "규율을 어긴 그룹을 강제로 폐쇄할 수 있습니다");
			List<GroupDTO> lgdto = adminService.getallgroups();
			System.out.println(lgdto.get(1));
			mav.addObject("lgdto", lgdto);
			mav.setViewName("Admin/admin_close");
			return mav;
		//}
	}
	
	
	
	
	@RequestMapping("/ban")
	public String ban() {
		String banuid = req.getParameter("uId");
		HttpSession session = req.getSession();
		MemberStatDTO minfodto = (MemberStatDTO)session.getAttribute("memberInfoDTO");
		String uId = minfodto.getuId();
		int checkadmin = 0;
		checkadmin = adminService.checkifadmin(uId);
		if(checkadmin==0)
		{
			return "Groophy/main";
		}else {
			adminService.ban(banuid);
			return "Admin/admin_ban";
		}
	}
	
	@RequestMapping("/close")
	public String close() {
		int gIndex = Integer.parseInt(req.getParameter("gIndex"));
		HttpSession session = req.getSession();
		MemberStatDTO minfodto = (MemberStatDTO)session.getAttribute("memberInfoDTO");
		String uId = minfodto.getuId();
		int checkadmin = 0;
		checkadmin = adminService.checkifadmin(uId);
		if(checkadmin==0)
		{
			return "Groophy/main";
		}else {
			adminService.close(gIndex);
			return "Admin/admin_close";
		}
	}
}
