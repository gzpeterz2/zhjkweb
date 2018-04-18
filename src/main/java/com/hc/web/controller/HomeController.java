package com.hc.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hc.web.mapper.ComDynamicMapper;
import com.hc.web.mapper.InstDynamicMapper;
import com.hc.web.po.HomePage;
import com.hc.web.service.ComDynamicService;
import com.hc.web.service.HomeService;
import com.hc.web.service.InstDynamicService;

@Controller
public class HomeController {
	
	@Autowired
	private HomeService homeService;
	@Autowired
	private ComDynamicService comDynamicService;
	@Autowired
	private InstDynamicService instDynamicService;
	
	@RequestMapping("/index.action")
	public ModelAndView homePage() throws Exception {
		ModelAndView mv = new ModelAndView();
		HomePage homePage = homeService.getHomePage();
		List<ComDynamicMapper> comlist = comDynamicService.findByPage();
		List<InstDynamicMapper> instlist = instDynamicService.findByPage();
		mv.addObject("homePage", homePage);
		mv.addObject("comDynamic",comlist);
		mv.addObject("instDynamic",instlist);
		mv.setViewName("index");
		
		return mv;
	}
}
