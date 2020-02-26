package com.groophy.controller;

import java.util.List;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.groophy.dto.BoardDTO;
import com.groophy.dto.BoardKeyDTO;
import com.groophy.dto.MemberStatDTO;
import com.groophy.dto.PageMaker;
import com.groophy.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private BoardService service;

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(@ModelAttribute("keydto") BoardKeyDTO keydto, PageMaker pageMaker, Model model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("list()... " + keydto.toString());

		MemberStatDTO mdto = (MemberStatDTO) session.getAttribute("memberStatDTO");
		
		if (mdto != null) {
			if (mdto.getgIndex() != 0) {
				keydto.setgIndex(mdto.getgIndex());
				logger.info("list()... group info : " + mdto.getgIndex());
				List<BoardDTO> boardList = service.list(keydto);
				
				pageMaker.setKeydto(keydto);
				pageMaker.setTotalCount(service.totalCount(keydto));
				
				/*리더관련 설정*/
				String uId = mdto.getuId();
				String leaderid = service.checkIfLeader(mdto.getgIndex()); 
				if(uId.equals(leaderid))
				{
					model.addAttribute("leader", 1);
				}else {
					model.addAttribute("leader", 0);
				}
				/*end 리더관련 설정*/
				model.addAttribute("gPhoto", "9224");
				model.addAttribute("list", boardList);
				model.addAttribute("topMenu", "mygroup");
				model.addAttribute("subMenu", "studyboard");
				model.addAttribute("title", "MY GROUP");
				model.addAttribute("explain", "스터디 자유 게시판입니다.");
				model.addAttribute("pageMaker", pageMaker);
				return "Board/list";
			} else {
				rttr.addFlashAttribute("msg", "그룹에 가입하셔야 이용 하실수 있습니다.");
				return "redirect:/search_main";
			}
		} else {
			rttr.addFlashAttribute("msg", "로그인을 하셔야 이용 하실수 있습니다.");
			return "redirect:/login";
		}

	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read(@RequestParam("bIndex") int bIndex, @ModelAttribute("keydto") BoardKeyDTO keydto, Model model,
			HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("read..." + bIndex);

		MemberStatDTO mdto = (MemberStatDTO) session.getAttribute("memberStatDTO");
		logger.info("read...group info :" + mdto.getgIndex());

		if (mdto != null) {
			if (mdto.getgIndex() != 0) {
				keydto.setgIndex(mdto.getgIndex());
				
				BoardDTO dto = service.read(keydto);
				
				/*리더관련 설정*/
				String uId = mdto.getuId();
				String leaderid = service.checkIfLeader(mdto.getgIndex()); 
				if(uId.equals(leaderid))
				{
					model.addAttribute("leader", 1);
				}else {
					model.addAttribute("leader", 0);
				}
				/*end 리더관련 설정*/
				
				dto.setgIndex(mdto.getgIndex());
				model.addAttribute("gPhoto", "9224");
				model.addAttribute("topMenu", "mygroup");
				model.addAttribute("subMenu", "studyboard");
				model.addAttribute("title", "MY GROUP");
				model.addAttribute("explain", "스터디 자유 게시판입니다.");
				model.addAttribute("loginUid", uId);
				model.addAttribute("boardDTO", dto);
				return "Board/read";
			} else {
				rttr.addFlashAttribute("msg", "그룹에 가입하셔야 이용 하실수 있습니다.");
				return "redirect:/search_main";
			}
		} else {
			rttr.addFlashAttribute("msg", "로그인을 하셔야 이용 하실수 있습니다.");
			return "redirect:/login";
		}
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String modifyGet(@RequestParam("bIndex") int bIndex, @ModelAttribute("keydto") BoardKeyDTO keydto,
			Model model, HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("modify..." + bIndex);

		MemberStatDTO mdto = (MemberStatDTO) session.getAttribute("memberStatDTO");

		if (mdto != null) {
			if (mdto.getgIndex() != 0) {
				keydto.setgIndex(mdto.getgIndex());
				
				BoardDTO dto = service.read(keydto);
				dto.setgIndex(mdto.getgIndex());
				
				/*리더관련 설정*/
				String uId = mdto.getuId();
				String leaderid = service.checkIfLeader(mdto.getgIndex()); 
				if(uId.equals(leaderid))
				{
					model.addAttribute("leader", 1);
				}else {
					model.addAttribute("leader", 0);
				}
				/*end 리더관련 설정*/
				model.addAttribute("gPhoto", "9224");
				model.addAttribute("topMenu", "mygroup");
				model.addAttribute("subMenu", "studyboard");
				model.addAttribute("title", "MY GROUP");
				model.addAttribute("explain", "스터디 자유 게시판입니다.");
				model.addAttribute("boardDTO", dto);
				return "Board/modify";
			} else {
				rttr.addFlashAttribute("msg", "그룹에 가입하셔야 이용 하실수 있습니다.");
				return "redirect:/search_main";
			}
		} else {
			rttr.addFlashAttribute("msg", "로그인을 하셔야 이용 하실수 있습니다.");
			return "redirect:/login";
		}
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPost(BoardDTO dto, @ModelAttribute("keydto") BoardKeyDTO keydto, HttpSession session,
			RedirectAttributes rttr) throws Exception {
		logger.info("modify POST..."+keydto.toString());

		MemberStatDTO mdto = (MemberStatDTO) session.getAttribute("memberStatDTO");

		if (mdto != null) {
			if (mdto.getgIndex() != 0) {
				
				dto.setgIndex(mdto.getgIndex());
				service.modify(dto);

				/*리더관련 설정*/
				String uId = mdto.getuId();
				String leaderid = service.checkIfLeader(mdto.getgIndex()); 
				if(uId.equals(leaderid))
				{
					rttr.addAttribute("leader", 1);
				}else {
					rttr.addAttribute("leader", 0);
				}
				/*end 리더관련 설정*/
				
				rttr.addAttribute("page", keydto.getPage());
				rttr.addAttribute("pageSize", keydto.getPageSize());
				rttr.addAttribute("keyField", keydto.getKeyField());
				rttr.addAttribute("keyWord", keydto.getKeyWord());

				rttr.addFlashAttribute("msg", "SUCCESS");
				logger.info(rttr.toString());

				return "redirect:list";
			} else {
				rttr.addFlashAttribute("msg", "그룹에 가입하셔야 이용 하실수 있습니다.");
				return "redirect:/search_main";
			}
		} else {
			rttr.addFlashAttribute("msg", "로그인을 하셔야 이용 하실수 있습니다.");
			return "redirect:/login";
		}
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGet(BoardDTO dto, Model model, HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("regist get ...........");

		MemberStatDTO mdto = (MemberStatDTO) session.getAttribute("memberStatDTO");

		if (mdto != null) {
			if (mdto.getgIndex() != 0) {

				/*리더관련 설정*/
				String uId = mdto.getuId();
				String leaderid = service.checkIfLeader(mdto.getgIndex()); 
				if(uId.equals(leaderid))
				{
					model.addAttribute("leader", 1);
				}else {
					model.addAttribute("leader", 0);
				}
				/*end 리더관련 설정*/
				dto.setuId(uId);
				model.addAttribute("gPhoto", "9224");
				model.addAttribute("topMenu", "mygroup");
				model.addAttribute("subMenu", "studyboard");
				model.addAttribute("title", "MY GROUP");
				model.addAttribute("explain", "스터디 자유 게시판입니다.");
				model.addAttribute("boardDTO", dto);
				return "Board/register";
			} else {
				rttr.addFlashAttribute("msg", "그룹에 가입하셔야 이용 하실수 있습니다.");
				return "redirect:/search_main";
			}
		} else {
			rttr.addFlashAttribute("msg", "로그인을 하셔야 이용 하실수 있습니다.");
			return "redirect:/login";
		}
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(BoardDTO dto, HttpSession session, RedirectAttributes rttr) throws Exception {

		logger.info("regist post ...........");
		logger.info(dto.toString());

		MemberStatDTO mdto = (MemberStatDTO) session.getAttribute("memberStatDTO");

		if (mdto != null) {
			if (mdto.getgIndex() != 0) {
				
				dto.setgIndex(mdto.getgIndex());
				
				/*리더관련 설정*/
				String uId = mdto.getuId();
				String leaderid = service.checkIfLeader(mdto.getgIndex()); 
				if(uId.equals(leaderid))
				{
					rttr.addAttribute("leader", 1);
				}else {
					rttr.addAttribute("leader", 0);
				}
				/*end 리더관련 설정*/
				
				service.register(dto);
				rttr.addFlashAttribute("msg", "SUCCESS");
				return "redirect:list";

			} else {
				rttr.addFlashAttribute("msg", "그룹에 가입하셔야 이용 하실수 있습니다.");
				return "redirect:/search_main";
			}
		} else {
			rttr.addFlashAttribute("msg", "로그인을 하셔야 이용 하실수 있습니다.");
			return "redirect:/login";
		}
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(@RequestParam("bIndex") int bIndex, BoardKeyDTO keydto, HttpSession session,
			RedirectAttributes rttr) throws Exception {
		logger.info("delete post ..........."+keydto.toString());
		MemberStatDTO mdto = (MemberStatDTO) session.getAttribute("memberStatDTO");

		if (mdto != null) {
			if (mdto.getgIndex() != 0) {
				
				keydto.setgIndex(mdto.getgIndex());
				service.delete(keydto);

				/*리더관련 설정*/
				String uId = mdto.getuId();
				String leaderid = service.checkIfLeader(mdto.getgIndex()); 
				if(uId.equals(leaderid))
				{
					rttr.addAttribute("leader", 1);
				}else {
					rttr.addAttribute("leader", 0);
				}
				/*end 리더관련 설정*/
				
				rttr.addAttribute("page", keydto.getPage());
				rttr.addAttribute("pageSize", keydto.getPageSize());
				rttr.addAttribute("keyField", keydto.getKeyField());
				rttr.addAttribute("keyWord", keydto.getKeyWord());

				rttr.addFlashAttribute("msg", "SUCCESS");

				return "redirect:list";
			} else {
				rttr.addFlashAttribute("msg", "그룹에 가입하셔야 이용 하실수 있습니다.");
				return "redirect:/search_main";
			}
		} else {
			rttr.addFlashAttribute("msg", "로그인을 하셔야 이용 하실수 있습니다.");
			return "redirect:/login";
		}
	}

}
