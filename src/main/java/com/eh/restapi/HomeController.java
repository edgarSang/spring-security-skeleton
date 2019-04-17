package com.eh.restapi;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value= {"/","/index"}, method = RequestMethod.GET)
	public ModelAndView visitHome() {
		ModelAndView model = new ModelAndView("index");
		logger.debug("go to index");
		
		model.addObject("title", "FOR ALL");
		model.addObject("message", "HELLO ALL.");
		return model;
	}
		
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView login() {
		logger.debug("admin request");
		ModelAndView model = new ModelAndView("login");
		model.addObject("title", "Admministrator Control Panel");
		model.addObject("message", "This page demonstrates how to use Spring security.");
		
		return model;
	}
	
	@RequestMapping(value="/member/playground", method = RequestMethod.GET)
	public ModelAndView playground() {
		ModelAndView model = new ModelAndView("playground");
		logger.debug("what's your name in playgroud");
		model.addObject("title", "play ground");
		model.addObject("message", "You are admin right?");
		return model;
	}
	
	@RequestMapping(value="/admin/getpower", method = RequestMethod.GET)
	public void getpower(HttpServletRequest request, HttpServletResponse response) {
		logger.debug("여기까지왔습니다.");
		try {
			response.setContentType("text/html; charset=UTF-8");
			response.getWriter().write("당신은 파워짱맨 어드민이시군요.");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
