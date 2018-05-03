package com.hc.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 
 * 注册
 * @author ouyangliang
 */
@Controller
public class RegisterController {
	
	@RequestMapping("/toregister")
	public String toRegister(){
		
		return "register";
	}

}
