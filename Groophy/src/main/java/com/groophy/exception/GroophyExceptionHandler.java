package com.groophy.exception;

import javax.servlet.http.HttpServletRequest;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice(basePackages = { "com.groophy.controller" })
public class GroophyExceptionHandler {

	@ExceptionHandler({ DuplicateKeyException.class })
	public String duplicateId(Model model, HttpServletRequest req) {
		String beforeUrl = req.getHeader("referer");
		beforeUrl = beforeUrl.substring(29);

		model.addAttribute("errorCode", 1);
		return "Member/join_form";
	}
	
}
