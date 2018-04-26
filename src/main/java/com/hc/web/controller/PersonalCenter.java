package com.hc.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PersonalCenter {
	
	@RequestMapping("/personal_center")
	public String toPersonalCenter(){
		
		return "personal_center";
	}

}
