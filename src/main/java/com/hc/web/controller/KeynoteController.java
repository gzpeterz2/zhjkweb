package com.hc.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class KeynoteController {

	
	@RequestMapping("/keynote.action")
	public String toKeynote(){
		return "keynote";
	}
	
	
}
