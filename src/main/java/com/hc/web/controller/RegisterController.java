package com.hc.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hc.web.po.WebUser;
import com.hc.web.service.RegisterService;
import com.hc.web.util.HCResult;


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
	
	@Autowired
	private RegisterService registerService;
	
	@RequestMapping("/register")
	public String register(WebUser webuser){
		registerService.register(webuser);
		
		return "redirect:tologin.action?msg=success ";
	}
	
	
	
	@RequestMapping("/iswebuserexist")
	@ResponseBody
	public HCResult iswebuserexist(String webuser){
		boolean exist = registerService.iswebuserexist(webuser);
		if (exist) {
			return HCResult.build(400, "用户名已经存在");
		} else {
			return HCResult.ok();
		}
		
	}
	
	@RequestMapping("/ismailexist")
	@ResponseBody
	public HCResult ismailexist(String mail){
		boolean exist = registerService.ismailexist(mail);
		if (exist) {
			return HCResult.build(400, "邮箱已经存在");
		} else {
			return HCResult.ok();
		}
		
	}
	
	@RequestMapping("/isvalidateright")
	@ResponseBody
	public HCResult isvalidateright(String validate,String mail){
		boolean right = registerService.isvalidateright(validate,mail);
		if (!right) {
			return HCResult.build(400, "验证码错误");
		} else {
			return HCResult.ok();
		}
		
	}
	
	@RequestMapping("/getvalidate")
	@ResponseBody
	public HCResult getvalidate(String mail){
		boolean ok = registerService.getvalidate(mail);
		if (!ok) {
			return HCResult.build(400, "验证邮件发送失败");
		} else {
			return HCResult.ok();
		}
		
	}

}
