package com.groophy.controller;

import java.beans.PropertyEditorSupport;
import java.io.IOException;
import java.io.InputStream;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.groophy.dto.BoardDTO;
import com.groophy.dto.BoardKeyDTO;
import com.groophy.dto.CalendarDTO;
import com.groophy.dto.GroupDTO;
import com.groophy.dto.MapDTO;
import com.groophy.dto.MemberInfoDTO;
import com.groophy.dto.MemberStatDTO;
import com.groophy.dto.PageMaker;
import com.groophy.service.StudyService;

@Controller 
@RequestMapping("/study")
public class StudyController {
	@Autowired
	private StudyService studyService;
	static String emailSubject, emailMessage;
	static String[] emailToRecipient;
	static final String emailFromRecipient = "groophytest@gmail.com";
	static int sendnum;
	@Autowired
	private JavaMailSender mailSenderObj;
	
	public void setStudyService(StudyService studyService) {
		this.studyService = studyService;
	}
	
	//대문사진 불러와서 그룹메인페이지로 이동하기
		@RequestMapping("/")
		public ModelAndView gotomain(HttpServletRequest req, RedirectAttributes rttr, BoardKeyDTO keydto, PageMaker pageMaker) throws Exception {
			HttpSession session = req.getSession();
			MemberStatDTO mdto = (MemberStatDTO)session.getAttribute("memberStatDTO");
			
			ModelAndView mav = new ModelAndView();
			if(mdto!=null) {
				if(mdto.getgIndex()!=0) {
					int gIndex= mdto.getgIndex();
					GroupDTO gdto1 = studyService.checkprogress(gIndex);
					if(gdto1.getgProgress()==0)
					{
						rttr.addFlashAttribute("msg", "그룹스터디 일정이 시작돼야 이용 하실 수 있습니다");
						mav.setViewName("redirect:/group/main?gIndex="+gIndex);
						return mav;
					}
					keydto.setgIndex(mdto.getgIndex());
					List<BoardDTO> boardList = studyService.list(keydto);
					pageMaker.setKeydto(keydto);
					mav.addObject("pageMaker", pageMaker);
					mav.addObject("boardList", boardList);
					GroupDTO gdto =  studyService.gotomain(gIndex);
					String gPhoto = gdto.getgPhoto();
					mav.addObject("gPhoto", gPhoto);
					String studyname = gdto.getgName();
					String startdate = gdto.getgStartDate();
					
					
					String uId = mdto.getuId();
					String leaderid = studyService.checkifleader(gIndex); 
					if(uId.equals(leaderid))
					{
						mav.addObject("leader", 1);
					}else {
						mav.addObject("leader", 0);
					}
					
					
					mav.addObject("title", studyname);
					mav.addObject("explain", "Since "+startdate);
					mav.addObject("topMenu", "mygroup");
					mav.addObject("subMenu", "studyhome");
					mav.setViewName("Study/study_main");
					return mav;		
				}else {
					rttr.addFlashAttribute("msg", "그룹에 가입하셔야 이용 하실 수 있습니다.");
					mav.setViewName("redirect:/search");
					return mav;
				}
			}else {
				rttr.addFlashAttribute("msg", "로그인을 하셔야 이용 하실 수 있습니다.");
				mav.setViewName("redirect:/login");
				return mav;
			}
				

			/*int gIndex= mdto.getgIndex();
			GroupDTO gdto =  studyService.gotomain(gIndex);
			String gPhoto = gdto.getgPhoto();
			String studyname = gdto.getgName();
			String startdate = gdto.getgStartDate();
			ModelAndView mav = new ModelAndView();
			
			
			String uId = mdto.getuId();
			String leaderid = studyService.checkifleader(gIndex); 
			if(uId.equals(leaderid))
			{
				mav.addObject("leader", 1);
			}else {
				mav.addObject("leader", 0);
			}
			
			
			mav.addObject("gPhoto", gPhoto);
			mav.addObject("title", studyname);
			mav.addObject("explain", "Since "+startdate);
			mav.addObject("topMenu", "mygroup");
			mav.setViewName("Study/study_main");
			return mav;
			}*/
		}
	
	//그룹 일정정보들 불러와서 캘린더 페이지로 이동하기
	@RequestMapping("/gotocalendar")
	public ModelAndView gotocalendar(Model model,HttpServletRequest req, RedirectAttributes rttr) {
		HttpSession session = req.getSession();
		MemberStatDTO mdto = (MemberStatDTO)session.getAttribute("memberStatDTO");
		ModelAndView mav = new ModelAndView();
		if(mdto!=null) {
			if(mdto.getgIndex()!=0) {
				int gIndex= mdto.getgIndex();
				GroupDTO gdto1 = studyService.checkprogress(gIndex);
				if(gdto1.getgProgress()==0)
				{
					rttr.addFlashAttribute("msg", "그룹스터디 일정이 시작돼야 이용 하실 수 있습니다");
					mav.setViewName("redirect:/group/main?gIndex="+gIndex);
					return mav;
				}
				List<CalendarDTO> clist = studyService.gotocalendar(gIndex);
				String uId = mdto.getuId();
				String leaderid = studyService.checkifleader(gIndex); 
				if(uId.equals(leaderid))
				{
					mav.addObject("leader", 1);
				}else {
					mav.addObject("leader", 0);
				}
				
				GroupDTO gdto =  studyService.gotomain(gIndex);
				String gPhoto = gdto.getgPhoto();
				mav.addObject("gPhoto", gPhoto);
				mav.addObject("clist", clist);
				mav.addObject("title", "캘린더");
				mav.addObject("explain", "그룹 일정을 입력하고 확인할 수 있습니다");
				mav.addObject("subMenu", "studycalendar");
				mav.setViewName("Study/study_calendar");
				return mav;
			}else {
				rttr.addFlashAttribute("msg", "그룹에 가입하셔야 이용 하실수 있습니다.");
				mav.setViewName("redirect:/search");
				return mav;
			}
		}else {
			rttr.addFlashAttribute("msg", "로그인을 하셔야 이용 하실수 있습니다.");
			mav.setViewName("redirect:/login");
			return mav;
		}
		

		/*String uId = mdto.getuId();
		String leaderid = studyService.checkifleader(gIndex); 
		if(uId.equals(leaderid))
		{
			mav.addObject("leader", 1);
		}else {
			mav.addObject("leader", 0);
		}
		
		
		mav.addObject("clist", clist);
		mav.addObject("title", "캘린더");
		mav.addObject("explain", "그룹 일정을 입력하고 확인할 수 있습니다");
		mav.addObject("subMenu", "studycalendar");
		mav.setViewName("Study/study_calendar");
		return mav;*/
	}
	
	//그룹 지도핑 불러와서 지도페이지로 이동하기
	@RequestMapping(value="/gotomap", method=RequestMethod.GET)
	public ModelAndView gotomap(HttpServletRequest req,MapDTO mapdto, RedirectAttributes rttr) {
		HttpSession session = req.getSession();
		MemberStatDTO mdto = (MemberStatDTO)session.getAttribute("memberStatDTO");
		ModelAndView mav = new ModelAndView();
		
		
		if(mdto!=null) {
			if(mdto.getgIndex()!=0) {
				int gIndex= mdto.getgIndex();
				GroupDTO gdto1 = studyService.checkprogress(gIndex);
				if(gdto1.getgProgress()==0)
				{
					rttr.addFlashAttribute("msg", "그룹스터디 일정이 시작돼야 이용 하실 수 있습니다");
					mav.setViewName("redirect:/group/main?gIndex="+gIndex);
					return mav;
				}
				mapdto = studyService.gotomap(gIndex);
				String uId = mdto.getuId();
				String leaderid = studyService.checkifleader(gIndex); 
				if(uId.equals(leaderid))
				{
					mav.addObject("leader", 1);
				}else {
					mav.addObject("leader", 0);
				}
				
				GroupDTO gdto =  studyService.gotomain(gIndex);
				String gPhoto = gdto.getgPhoto();
				mav.addObject("gPhoto", gPhoto);
				mav.addObject("mapDTO", mapdto);
				mav.addObject("title", "지도");
				mav.addObject("explain", "모임 장소를 확인할 수 있습니다");
				mav.addObject("topMenu", "mygroup");
				mav.addObject("subMenu", "studymap");
				mav.setViewName("Study/study_map2");
				return mav;
			}else {
				rttr.addFlashAttribute("msg", "그룹에 가입하셔야 이용 하실수 있습니다.");
				mav.setViewName("redirect:/search");
				return mav;
			}
		}else {
			rttr.addFlashAttribute("msg", "로그인을 하셔야 이용 하실수 있습니다.");
			mav.setViewName("redirect:/login");
			return mav;
		}
		
/*
		String uId = mdto.getuId();
		String leaderid = studyService.checkifleader(gIndex); 
		if(uId.equals(leaderid))
		{
			mav.addObject("leader", 1);
		}else {
			mav.addObject("leader", 0);
		}

		mav.addObject("mapDTO", mapdto);
		mav.addObject("title", "지도");
		mav.addObject("explain", "모임 장소를 확인할 수 있습니다");
		mav.addObject("topMenu", "mygroup");
		mav.addObject("subMenu", "studymap");
		mav.setViewName("Study/study_map2");
		return mav;*/
	}
	
	
	//그룹 일정정보들 불러와서 캘린더 페이지로 이동하기
		@RequestMapping("/gotoemail")
		public ModelAndView gotoemail(Model model,HttpServletRequest req, RedirectAttributes rttr) {
			HttpSession session = req.getSession();
			MemberStatDTO mdto = (MemberStatDTO)session.getAttribute("memberStatDTO");
			ModelAndView mav = new ModelAndView();
			
			
			
			if(mdto!=null) {
				if(mdto.getgIndex()!=0) {
					int gIndex= mdto.getgIndex();
					GroupDTO gdto1 = studyService.checkprogress(gIndex);
					if(gdto1.getgProgress()==0)
					{
						rttr.addFlashAttribute("msg", "그룹스터디 일정이 시작돼야 이용 하실 수 있습니다");
						mav.setViewName("redirect:/group/main?gIndex="+gIndex);
						return mav;
					}
					List<Map<String,String>> emailmap = null;
					emailmap = studyService.getallemail(gIndex);
					
					String uId = mdto.getuId();
					String leaderid = studyService.checkifleader(gIndex); 
					if(uId.equals(leaderid))
					{
						mav.addObject("leader", 1);
					}else {
						mav.addObject("leader", 0);
					}
					
					GroupDTO gdto =  studyService.gotomain(gIndex);
					String gPhoto = gdto.getgPhoto();
					mav.addObject("gPhoto", gPhoto);
					mav.addObject("emailmap", emailmap);
					mav.addObject("title", "메일");
					mav.addObject("explain", "메일을 발송할 수 있습니다");
					mav.addObject("topMenu", "mygroup");
					mav.addObject("subMenu", "studyemail");
					mav.setViewName("Study/study_emailform");
					return mav;
				}else {
					rttr.addFlashAttribute("msg", "그룹에 가입하셔야 이용 하실수 있습니다.");
					mav.setViewName("redirect:/search");
					return mav;
				}
			}else {
				rttr.addFlashAttribute("msg", "로그인을 하셔야 이용 하실수 있습니다.");
				mav.setViewName("redirect:/login");
				return mav;
			}
			
/*
			String uId = mdto.getuId();
			String leaderid = studyService.checkifleader(gIndex); 
			if(uId.equals(leaderid))
			{
				mav.addObject("leader", 1);
			}else {
				mav.addObject("leader", 0);
			}
			
			mav.addObject("emailmap", emailmap);
			mav.addObject("title", "메일");
			mav.addObject("explain", "메일을 발송할 수 있습니다");
			mav.addObject("topMenu", "mygroup");
			mav.addObject("subMenu", "studyemail");
			mav.setViewName("Study/study_emailform");
			return mav;*/
		}
	
	//달력일정 저장
	@RequestMapping(value="/savecalendar", method = RequestMethod.POST)
	public String savecalendar(HttpServletRequest req) {
		HttpSession session = req.getSession();
		MemberStatDTO mdto = (MemberStatDTO)session.getAttribute("memberStatDTO");
		int gIndex= mdto.getgIndex();
		String ctitle = req.getParameter("ctitle");
		int cstartyear = Integer.parseInt(req.getParameter("cstartyear"));
		int cstartmonth = Integer.parseInt(req.getParameter("cstartmonth"));
		int cstartdate = Integer.parseInt(req.getParameter("cstartdate"));
		int cstarthour = Integer.parseInt(req.getParameter("cstarthour"));
		int cstartminutes = Integer.parseInt(req.getParameter("cstartminutes"));
		int cendyear = Integer.parseInt(req.getParameter("cendyear"));
		int cendmonth = Integer.parseInt(req.getParameter("cendmonth"));
		int cenddate = Integer.parseInt(req.getParameter("cenddate"));
		int cendhour = Integer.parseInt(req.getParameter("cendhour"));
		int cendminutes = Integer.parseInt(req.getParameter("cendminutes"));
		String allday = req.getParameter("callday");
		int callday = 1;
		if(allday.equals("true"))
		{
			 callday = 1;
		}else {
			 callday = 0;
		}
		/*System.out.println(ctitle);
		System.out.println(cstartyear);
		System.out.println(cstartmonth);
		System.out.println(cstartdate);
		System.out.println(cstarthour);
		System.out.println(cstartminutes);
		System.out.println(cendyear);
		System.out.println(cendmonth);
		System.out.println(cenddate);
		System.out.println(cendhour);
		System.out.println(cendminutes);
		System.out.println(callday);*/
		CalendarDTO dto = new CalendarDTO();
		dto.setgIndex(gIndex);
		dto.setCtitle(ctitle);
		dto.setCstartyear(cstartyear);
		dto.setCstartmonth(cstartmonth);
		dto.setCstartdate(cstartdate);
		dto.setCstarthour(cstarthour);
		dto.setCstartminutes(cstartminutes);
		dto.setCendyear(cendyear);
		dto.setCendmonth(cendmonth);
		dto.setCenddate(cenddate);
		dto.setCendhour(cendhour);
		dto.setCendminutes(cendminutes);
		dto.setCallday(callday);
		studyService.savecalendar(dto);
		System.out.println("before return");
		return "redirect:/study/gotocalendar";
	}
	
	
	//그룹 탈퇴
	@RequestMapping("/withdraw")
	public String withdraw(HttpServletRequest req) {
		HttpSession session = req.getSession();
		MemberStatDTO minfodto = (MemberStatDTO)session.getAttribute("memberInfoDTO");
		String uId = minfodto.getuId();
		studyService.withdraw(uId);
		return "Study/study_calendar";
	}


	
	//이메일 발송(gmail api이용)
	@RequestMapping(value="/sendemail", method = RequestMethod.POST)
	public String sendemail(final @RequestParam CommonsMultipartFile attachFileObj,HttpServletRequest req) {
		/*
		HttpSession session = req.getSession();
		MemberStatDTO mdto = (MemberStatDTO)session.getAttribute("memberStatDTO");
		int gIndex= mdto.getgIndex();
		return "Study/study_main";
		*/
		emailSubject = req.getParameter("etitle");
		emailMessage = req.getParameter("etext");
		emailToRecipient = req.getParameterValues("to");
		//System.out.println(emailToRecipient[0]+","+emailToRecipient[1]+","+emailToRecipient[2]);
		//System.out.println("title: "+emailSubject);
		//System.out.println("text: "+emailMessage);
		System.out.println("length : "+emailToRecipient.length);
		for(sendnum=0;sendnum<emailToRecipient.length;sendnum++)
		{
			mailSenderObj.send(new MimeMessagePreparator() {
				public void prepare(MimeMessage mimeMessage) throws Exception {
	
					MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");	
					mimeMsgHelperObj.setTo(emailToRecipient[sendnum]);
					mimeMsgHelperObj.setFrom(emailFromRecipient);				
					mimeMsgHelperObj.setText(emailMessage);
					mimeMsgHelperObj.setSubject(emailSubject);
				
					if ((attachFileObj != null) && (attachFileObj.getSize() > 0) && (!attachFileObj.equals(""))) {
						//System.out.println("\nAttachment Name?= " + attachFileObj.getOriginalFilename() + "\n");
						mimeMsgHelperObj.addAttachment(attachFileObj.getOriginalFilename(), new InputStreamSource() {					
							public InputStream getInputStream() throws IOException {
								return attachFileObj.getInputStream();
							}
						});
					} else {
						System.out.println("\nNo Attachment Is Selected By The User. Sending Text Email!\n");
					}
				}
			});
		}
		System.out.println("이메일 전송 완료");
		
		return  "/groophy/study/gotoemail";
	}
	
	

	
	//그룹기능(참여멤버 보기)
	@RequestMapping("/gotomemberlist")
	public ModelAndView gotomemberlist(HttpServletRequest req, RedirectAttributes rttr) {
		HttpSession session = req.getSession();
		MemberStatDTO mdto = (MemberStatDTO)session.getAttribute("memberStatDTO");
		ModelAndView mav = new ModelAndView();
		
		
		if(mdto!=null) {
			if(mdto.getgIndex()!=0) {
				int gIndex= mdto.getgIndex();
				GroupDTO gdto1 = studyService.checkprogress(gIndex);
				if(gdto1.getgProgress()==0)
				{
					rttr.addFlashAttribute("msg", "그룹스터디 일정이 시작돼야 이용 하실 수 있습니다");
					mav.setViewName("redirect:/group/main?gIndex="+gIndex);
					return mav;
				}
				List<Map<String,Object>> lineup = null;
				lineup = studyService.lineup(gIndex);
				
				String uId = mdto.getuId();
				String leaderid = studyService.checkifleader(gIndex); 
				if(uId.equals(leaderid))
				{
					mav.addObject("leader", 1);
				}else {
					mav.addObject("leader", 0);
				}
				
				GroupDTO gdto =  studyService.gotomain(gIndex);
				String gPhoto = gdto.getgPhoto();
				mav.addObject("gPhoto", gPhoto);
				mav.addObject("lineup", lineup);
				mav.addObject("title", "그룹참여명단");
				mav.addObject("explain", "그룹원들의 정보를 확인 할 수 있습니다");
				mav.addObject("topMenu", "mygroup");
				mav.addObject("subMenu", "studyregister");
				mav.setViewName("Study/study_memberlist");
				return mav;
			}else {
				rttr.addFlashAttribute("msg", "그룹에 가입하셔야 이용 하실수 있습니다.");
				mav.setViewName("redirect:/search");
				return mav;
			}
		}else {
			rttr.addFlashAttribute("msg", "로그인을 하셔야 이용 하실수 있습니다.");
			mav.setViewName("redirect:/login");
			return mav;
		}
		/*
		String uId = mdto.getuId();
		String leaderid = studyService.checkifleader(gIndex); 
		if(uId.equals(leaderid))
		{
			mav.addObject("leader", 1);
		}else {
			mav.addObject("leader", 0);
		}
		
		
		mav.addObject("lineup", lineup);
		mav.addObject("title", "그룹참여명단");
		mav.addObject("explain", "그룹원들의 정보를 확인 할 수 있습니다");
		mav.addObject("topMenu", "mygroup");
		mav.addObject("subMenu", "studyregister");
		mav.setViewName("Study/study_memberlist");
		return mav;*/
	}
	
	
	
	
	
	
	//그룹리더인지 확인후 그룹관리 페이지로 이동
	//그룹리더기능(참여멤버 보기-출석률,수행률등 조회가능, 강퇴버튼 있음)
	@RequestMapping("/gotomanage")
	public ModelAndView gotomanage(HttpServletRequest req) {
		HttpSession session = req.getSession();
		MemberInfoDTO minfodto = (MemberInfoDTO)session.getAttribute("memberInfoDTO");
		MemberStatDTO mdto = (MemberStatDTO)session.getAttribute("memberStatDTO");
		int gIndex= mdto.getgIndex();
		String uId = minfodto.getuId();
		String leaderid = studyService.checkifleader(gIndex); 
		ModelAndView mav = new ModelAndView();
		if(uId.equals(leaderid))
		{
			System.out.println("그룹리더 인증에 성공했습니다.");
			List<Map<String,Object>> lineup = null;
			lineup = studyService.lineup(gIndex);
			GroupDTO gdto =  studyService.gotomain(gIndex);
			String gPhoto = gdto.getgPhoto();
			mav.addObject("gPhoto", gPhoto);
			mav.addObject("lineup", lineup);
			mav.addObject("title", "그룹원관리");
			mav.addObject("leader", 1);
			mav.addObject("explain", "그룹원들의 정보를 확인하고 관리할 수 있습니다");
			mav.addObject("topMenu", "mygroup");
			mav.setViewName("Study/study_manage_memberlist");
			return mav;
		}else {
			System.out.println("그룹리더 인증에 실패했습니다.");
			mav.setViewName("Study/study_main");
			return mav;
		}
		
	}
	
	
	//그룹리더기능
	@RequestMapping("/gotogroupinfo")
	public ModelAndView gotogroupinfo(HttpServletRequest req,GroupDTO gdto) {
		HttpSession session = req.getSession();
		MemberInfoDTO minfodto = (MemberInfoDTO)session.getAttribute("memberInfoDTO");
		MemberStatDTO mdto = (MemberStatDTO)session.getAttribute("memberStatDTO");
		int gIndex= mdto.getgIndex();
		gdto = studyService.gotogroupinfo(gIndex);
		String uId = minfodto.getuId();
		String leaderid = studyService.checkifleader(gIndex); 
		ModelAndView mav = new ModelAndView();
		if(uId.equals(leaderid))
		{
			System.out.println("그룹리더 인증에 성공했습니다.");
			gdto = studyService.gotogroupinfo(gIndex);
			String gPhoto = gdto.getgPhoto();
			mav.addObject("gPhoto", gPhoto);
			mav.addObject("gdto", gdto);
			mav.addObject("leader", 1);
			mav.addObject("title", "그룹정보관리");
			mav.addObject("explain", "그룹정보를 확인하고 관리할 수 있습니다");
			mav.addObject("topMenu", "mygroup");
			mav.setViewName("Study/study_manage_groupinfo");
			return mav;
		}else {
			System.out.println("그룹리더 인증에 실패했습니다.");
			mav.setViewName("Study/study_main");
			return mav;
		}
		
	}
	
	//그룹리더기능
		@RequestMapping("/gotoinputlocation")
		public ModelAndView gotoinputlocation(HttpServletRequest req,MapDTO mdto) {
			HttpSession session = req.getSession();
			MemberInfoDTO minfodto = (MemberInfoDTO)session.getAttribute("memberInfoDTO");
			MemberStatDTO msdto = (MemberStatDTO)session.getAttribute("memberStatDTO");
			int gIndex= msdto.getgIndex();
			System.out.println(gIndex);
			String uId = minfodto.getuId();
			String leaderid = studyService.checkifleader(gIndex); 
			ModelAndView mav = new ModelAndView();
			if(uId.equals(leaderid))
			{
				System.out.println("그룹리더 인증에 성공했습니다.");
				MapDTO mapdto =  studyService.gotomap(gIndex);
				GroupDTO gdto =  studyService.gotomain(gIndex);
				String gPhoto = gdto.getgPhoto();
				mav.addObject("gPhoto", gPhoto);
				mav.addObject("mapDTO", mapdto);
				mav.addObject("leader", 1);
				mav.addObject("title", "모임장소 설정");
				mav.addObject("explain", "현재 설정되어있는 모임장소를 확인하고 수정할 수 있습니다");
				mav.addObject("topMenu", "mygroup");
				mav.setViewName("Study/study_manage_inputlocation");
				return mav;
			}else {
				System.out.println("그룹리더 인증에 실패했습니다.");
				mav.setViewName("Study/study_main");
				return mav;
			}
		}
		
		//위치설정이 맞는지 확인
		@RequestMapping("/gotochecklocation")
		public ModelAndView gotocheckloction(HttpServletRequest req) {
			HttpSession session = req.getSession();
			MemberInfoDTO minfodto = (MemberInfoDTO)session.getAttribute("memberInfoDTO");
			MemberStatDTO msdto = (MemberStatDTO)session.getAttribute("memberStatDTO");
			int gIndex= msdto.getgIndex();
			String mLocation = req.getParameter("changeLocation");
			
			String uId = minfodto.getuId();
			String leaderid = studyService.checkifleader(gIndex); 
			ModelAndView mav = new ModelAndView();
			if(uId.equals(leaderid))
			{
				System.out.println("그룹리더 인증에 성공했습니다.");
				mav.addObject("mLocation", mLocation);
				GroupDTO gdto =  studyService.gotomain(gIndex);
				String gPhoto = gdto.getgPhoto();
				mav.addObject("gPhoto", gPhoto);
				mav.addObject("leader", 1);
				mav.addObject("title", "모임장소 확인");
				mav.addObject("explain", "입력한 위치와 지도에 보이는 위치가 맞는지 확인할 수 있습니다. ");
				mav.addObject("topMenu", "mygroup");
				mav.setViewName("Study/study_manage_checklocation");
				return mav;
			}else {
				System.out.println("그룹리더 인증에 실패했습니다.");
				mav.setViewName("Study/study_main");
				return mav;
			}
		}
		
		//지도 핑 저장
		@RequestMapping(value="/savelocation", method = RequestMethod.POST)
		public String savelocation(HttpServletRequest req, MapDTO mapdto) {
			HttpSession session = req.getSession();
			MemberStatDTO mdto = (MemberStatDTO)session.getAttribute("memberStatDTO");
			int gIndex= mdto.getgIndex();
			String changeLocation = req.getParameter("changeLocation");
			System.out.println("changeLocation : "+changeLocation);
			mapdto.setgIndex(gIndex);
			mapdto.setmLocation(changeLocation);
			studyService.savelocation(mapdto);
			return "redirect:/study/gotoinputlocation";
		}
	
		
	
	
	
	
	
	
	
	//그룹원 추방시키기
	@RequestMapping(value="/kick", method = RequestMethod.GET)
	public String kick(HttpServletRequest req) {
		//ManageMemberList 에서 parameter로 userid를 넘기기 (보여주는건 nickname이랑 id를 같이 보여줌)
		String kickmemberuid = req.getParameter("uId");
		studyService.kick(kickmemberuid);
		return "Study/study_manege_memberlist";
	}
	
	//그룹 삭제
	@RequestMapping(value="/deletegroup", method = RequestMethod.GET)
	public String deletegroup(HttpServletRequest req) {
		HttpSession session = req.getSession();
		MemberStatDTO mdto = (MemberStatDTO)session.getAttribute("MemberStatDTO");
		int gIndex= mdto.getgIndex();
		studyService.deletegroup(gIndex);
		return "Study/GroupDeleted";
	}
}

