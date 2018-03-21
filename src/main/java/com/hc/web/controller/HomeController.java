package com.hc.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hc.web.po.HomePage;
import com.hc.web.service.HomeService;

@Controller
public class HomeController {
	
	@Autowired
	private HomeService homeService;
	
	@RequestMapping("/index.action")
	public ModelAndView homePage() throws Exception {
		ModelAndView mv = new ModelAndView();
		HomePage homePage = homeService.getHomePage();
		mv.addObject("homePage", homePage);
		mv.setViewName("index");
		
		return mv;
	}
}
