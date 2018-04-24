package com.hc.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SuccstudentController {
	
	@RequestMapping("/article")
	public String toArticle(){
		return "article";
	}
	
}
