package com.hc.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hc.web.po.WebUser;
import com.hc.web.service.LoginService;
import com.hc.web.util.CookieUtils;
import com.hc.web.util.HCResult;



/**
 *  登录
 * @author ouyangliang
 */
@Controller
public class LoginController {

	@RequestMapping("/tologin")
	public String tologin(String msg,Model model){
		if (StringUtils.isNotBlank(msg)) {
			model.addAttribute("msg", "注册成功 请登录");
		}
		return "login";
	}
	
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/login")
	@ResponseBody
	public HCResult login(WebUser webUser,HttpServletRequest request,HttpServletResponse response){
		
		WebUser user = loginService.getUserByCodePassword(webUser);
		if (user == null) {
			return HCResult.build(400, "用户名或密码错误");
		}
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		session.setMaxInactiveInterval(1800);
		String sessionid = session.getId();
		CookieUtils.setCookie(request, response, "JSESSIONID", sessionid, 432000,true);
		
		
		return HCResult.ok();
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.setAttribute("user", null);
		
		return "index";
	}
	
	@RequestMapping("/isLogin")
	@ResponseBody
	public HCResult isLogin(HttpServletRequest request){
		Object object = request.getSession().getAttribute("user");
		if (object != null) {
			return HCResult.ok();
		}else {
			return HCResult.build(400, "没有登录");
		}
		
	}
	
	
}
