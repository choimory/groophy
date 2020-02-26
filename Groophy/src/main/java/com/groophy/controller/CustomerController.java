package com.groophy.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
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
import com.groophy.dto.PageMaker;
import com.groophy.service.NoticeService;

@Controller
@RequestMapping("/customer/notice")
public class CustomerController {

	@Autowired
	private NoticeService service;

	private static final Logger logger = LoggerFactory.getLogger(CustomerController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(@ModelAttribute("keydto") BoardKeyDTO keydto, PageMaker pageMaker, Model model) throws Exception {
		logger.info(keydto.toString());
		List<BoardDTO> boardList = service.list(keydto);

		pageMaker.setKeydto(keydto);
		pageMaker.setTotalCount(service.totalCount(keydto));
		model.addAttribute("list", boardList);
		model.addAttribute("topMenu", "customer");
		model.addAttribute("subMenu", "notice");
		model.addAttribute("title", "CUSTOMER");
		model.addAttribute("explain", "공지사항");
		model.addAttribute("pageMaker", pageMaker);
		return "Customer/list";
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read(@RequestParam("bIndex") int bIndex, @ModelAttribute("keydto") BoardKeyDTO keydto, Model model) throws Exception {
		logger.info("read..." + bIndex);
		
		BoardDTO dto = service.read(bIndex);
		model.addAttribute("topMenu", "customer");
		model.addAttribute("subMenu", "notice");
		model.addAttribute("title", "CUSTOMER");
		model.addAttribute("explain", "공지사항");
		model.addAttribute("boardDTO", dto);
		return "Customer/read";

	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String modifyGet(int bIndex, @ModelAttribute("keydto") BoardKeyDTO keydto, Model model) throws Exception {
		BoardDTO dto = service.read(bIndex);
		model.addAttribute("topMenu", "customer");
		model.addAttribute("subMenu", "notice");
		model.addAttribute("title", "CUSTOMER");
		model.addAttribute("explain", "공지사항");
		model.addAttribute("boardDTO", dto);
		return "Customer/modify";
		
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPost(BoardDTO dto, @ModelAttribute("keydto") BoardKeyDTO keydto, RedirectAttributes rttr) throws Exception {
		logger.info(keydto.toString());
		service.modify(dto);

		rttr.addAttribute("page", keydto.getPage());
		rttr.addAttribute("pageSize", keydto.getPageSize());
		rttr.addAttribute("keyField", keydto.getKeyField());
		rttr.addAttribute("keyWord", keydto.getKeyWord());

		rttr.addFlashAttribute("msg", "SUCCESS");
		logger.info(rttr.toString());

		return "redirect:list";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGet(Model model) throws Exception {
		logger.info("regist get ...........");
		model.addAttribute("topMenu", "customer");
		model.addAttribute("subMenu", "notice");
		model.addAttribute("title", "CUSTOMER");
		model.addAttribute("explain", "공지사항");
		return "Notice/register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(BoardDTO dto, RedirectAttributes rttr) throws Exception {

		logger.info("regist post ...........");
		logger.info(dto.toString());

		service.register(dto);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:list";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	  public String delete(@RequestParam("bIndex") int bIndex, BoardKeyDTO keydto, RedirectAttributes rttr) throws Exception {

	    service.delete(bIndex);

	    rttr.addAttribute("page", keydto.getPage());
		rttr.addAttribute("pageSize", keydto.getPageSize());
		rttr.addAttribute("keyField", keydto.getKeyField());
		rttr.addAttribute("keyWord", keydto.getKeyWord());

	    rttr.addFlashAttribute("msg", "SUCCESS");

	    return "redirect:list";
	  }

}
