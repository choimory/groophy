package com.groophy.controller;

import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.groophy.dto.GroupDTO;
import com.groophy.dto.MemberInfoDTO;
import com.groophy.dto.MemberStatDTO;
import com.groophy.service.MemberService;

@Controller
@SessionAttributes({ "memberInfoDTO", "memberStatDTO" })
public class MemberController {
	@Resource(name = "memberService")
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String joinClause(Model model) {
		String viewPage = "Member/join_clause";

		model.addAttribute("title", "회원약관");

		return viewPage;
	}

	// 회원가입>약관확인
	@RequestMapping(value = "/join_form", method = RequestMethod.POST)
	public String joinForm(Model model) {
		String viewPage = "Member/join_form";

		model.addAttribute("title", "회원가입");

		return viewPage;
	}

	// 회원가입>(약관)확인>(작성)확인
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(MemberInfoDTO memberInfoDTO, Model model, @RequestParam("uFile") MultipartFile photoFile,
			HttpServletRequest req) {
		String viewPage = "Member/join_request_email";
		Map<String, Object> retMap = null;
		MemberStatDTO memberStatDTO = null;
		String filePath=null;
		String originalFileName=null;
		byte[] fileBytes=null;
		
			
		if(!photoFile.isEmpty()) {
			try {
				filePath=req.getSession().getServletContext().getRealPath("")+"resources/assets/img/user_profile/";
				fileBytes=photoFile.getBytes();
				originalFileName=photoFile.getOriginalFilename();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		retMap = memberService.join(memberInfoDTO, filePath, originalFileName,fileBytes);
		memberInfoDTO = (MemberInfoDTO) retMap.get("memberInfoDTO");
		memberStatDTO = (MemberStatDTO) retMap.get("memberStatDTO");

		model.addAttribute("title", "가입완료");
		model.addAttribute("memberInfoDTO", memberInfoDTO);
		model.addAttribute("memberStatDTO", memberStatDTO);
		return viewPage;
	}

	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm(Model model, HttpServletRequest req) {
		String beforeUrl = req.getHeader("referer");
		beforeUrl = beforeUrl.substring(29);// -> http://localhost:8090/groophy/~~~의 y까지 잘라내고 reqMapping만 남김}
		if (beforeUrl.equals("/find_id")) {
			beforeUrl = "/main";
		} else if (beforeUrl.equals("/find_pw")) {
			beforeUrl = "/main";
		}

		String viewPage = "Member/login_form";

		model.addAttribute("title", "로그인");
		model.addAttribute("beforeUrl", beforeUrl);

		return viewPage;
	}

	// 로그인>확인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String uId, String uPw, @RequestParam("beforeUrl") String beforeUrl, Model model) {
		String viewPage = "redirect:" + beforeUrl;
		MemberInfoDTO memberInfoDTO = null;
		MemberStatDTO memberStatDTO = null;
		Map<String, Object> retMap = null;

		retMap = memberService.login(uId, uPw);

		memberInfoDTO = (MemberInfoDTO) retMap.get("memberInfoDTO");
		memberStatDTO = (MemberStatDTO) retMap.get("memberStatDTO");
		if (memberInfoDTO == null) {
			model.addAttribute("errorCode", 1);
			model.addAttribute("beforeUrl", beforeUrl);
			return "Member/login_form";
		}

		model.addAttribute("memberInfoDTO", memberInfoDTO);
		model.addAttribute("memberStatDTO", memberStatDTO);
		model.addAttribute("topMenu", "Home");
		return viewPage;
	}

	// 로그인>ID찾기
	@RequestMapping(value = "/find_id", method = RequestMethod.GET)
	public String findIdForm() {
		String viewPage = "Member/find_id";

		return viewPage;
	}

	// 로그인>ID찾기>확인
	// email을 조건으로 id select
	@RequestMapping(value = "/find_id", method = RequestMethod.POST)
	public String findId(String uEmail, Model model) {
		String viewPage = "Member/find_id_result";
		String uId = null;

		uId = memberService.findID(uEmail);
		if (uId == null) {
			model.addAttribute("errorCode", 1);
			viewPage = "Member/find_id";
		}

		model.addAttribute("uId", uId);
		return viewPage;
	}

	// 로그인>PW찾기
	@RequestMapping(value = "/find_pw", method = RequestMethod.GET)
	public String findPwForm() {
		String viewPage = "Member/find_pw";

		return viewPage;
	}

	// 로그인>PW찾기>확인
	// id, email을 조건으로 무작위정수로 pw변경 뒤 이메일로 임시비밀번호 발송
	@RequestMapping(value = "/find_pw", method = RequestMethod.POST)
	public String findPw(String uId, String uEmail, Model model) {
		String viewPage = "Member/find_pw_result";
		int uPw = 0;

		uPw = memberService.findPW(uId, uEmail);
		if (uPw == 0) {
			model.addAttribute("errorCode", 1);
			return "Member/find_pw";
		}

		model.addAttribute("uPw", uPw);
		return viewPage;
	}

	// 회원정보
	// TODO
	// 출석률 update 관련
	@RequestMapping("/member_info")
	public String memberInfo(Model model,HttpSession session) {
		String viewPage = "Member/member_info";
		Map<String,Object> retMap=null;
		GroupDTO groupDTO=null;
		MemberInfoDTO memberInfoDTO=(MemberInfoDTO)session.getAttribute("memberInfoDTO");
		if(memberInfoDTO==null) {
			return viewPage;
		}
		String uId=memberInfoDTO.getuId();
		
		 retMap=memberService.memberInfo(uId);
		 groupDTO=(GroupDTO)retMap.get("groupDTO");

		String newIntroduce=memberInfoDTO.getuIntroduce().replace("\r\n","<br>");
		memberInfoDTO.setuIntroduce(newIntroduce);
			
		model.addAttribute("title", "회원정보");
		model.addAttribute("explain", "회원정보 페이지입니다");
		model.addAttribute("groupDTO", groupDTO);
		return viewPage;
	}

	// 회원정보>회원정보수정
	@RequestMapping(value = "/modify_info", method = RequestMethod.GET)
	public String modifyInfoForm() {
		String viewPage = "Member/modify_before";

		return viewPage;
	}

	// 회원정보>회원정보수정>확인
	@RequestMapping(value = "/modify_before", method = RequestMethod.POST)
	public String modifyBefore(String uId, String uPw, Model model) {
		String viewPage = "Member/modify_form";
		boolean result = false;

		result = memberService.modifyBefore(uId, uPw);
		if (!result) {
			viewPage = "Member/modify_before";
			model.addAttribute("errorCode", 1);
		}

		return viewPage;
	}

	// 회원정보>회원정보수정>확인>확인
	// TODO 이메일쪽만 수정이 안되는 문제
	@RequestMapping(value = "/modify_info", method = RequestMethod.POST)
	public String modifyInfo(MemberInfoDTO memberInfoDTO, Model model, @RequestParam("uFile") MultipartFile photoFile, HttpServletRequest req) {
		String viewPage = "redirect:/member_info";
		String filePath=null;
		String originalFileName=null;
		byte[] fileBytes=null;
		
			
		if(!photoFile.isEmpty()) {
			try {
				filePath=req.getSession().getServletContext().getRealPath("")+"resources/assets/img/user_profile/";
				fileBytes=photoFile.getBytes();
				originalFileName=photoFile.getOriginalFilename();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		memberInfoDTO = memberService.modifyInfo(memberInfoDTO, filePath, originalFileName, fileBytes);

		model.addAttribute("memberInfoDTO", memberInfoDTO);
		return viewPage;
	}

	// 회원정보>회원탈퇴
	@RequestMapping(value = "/withdraw", method = RequestMethod.GET)
	public String withdrawForm() {
		String viewPage = "Member/withdraw_form";

		return viewPage;
	}

	// 회원정보>회원탈퇴>확인
	//TODO 해당회원이 조장일시 해당그룹 폐쇄
	@RequestMapping(value = "/withdraw", method = RequestMethod.POST)
	public String withdraw(String uId, String uPw, Model model, SessionStatus session) {
		String viewPage = "Member/withdraw_result";
		int result = 0;

		result = memberService.withdraw(uId, uPw);

		if (result == -1) {
			model.addAttribute("errorCode", 1);
			return "Member/withdraw_form";
		}

		session.setComplete();

		model.addAttribute("title", "회원탈퇴완료");
		return viewPage;
	}

	// 로그아웃
	@RequestMapping("/logout")
	public String logout(SessionStatus session, HttpServletRequest req, Model model) {
		String beforeUrl = req.getHeader("referer");
		beforeUrl = beforeUrl.substring(29);
		String viewPage = "redirect:" + beforeUrl;

		if (beforeUrl.equals("/member_info")) {
			viewPage = "redirect:/main";
		}
		session.setComplete();

		return viewPage;
	}
}
