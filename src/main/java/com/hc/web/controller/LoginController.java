package com.hc.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.coyote.ActionCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hc.web.po.WebUser;
import com.hc.web.service.LoginService;
import com.hc.web.util.HCResult;


/**
 *  登录
 * @author ouyangliang
 */
@Controller
public class LoginController {

	@RequestMapping("tologin.action")
	public String tologin(){
		return "login";
	}
	
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("login.action")
	@ResponseBody
	public HCResult login(WebUser webUser,HttpServletRequest request){
		WebUser user = loginService.getUserByCodePassword(webUser);
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		return HCResult.ok();
	}
	
}
