package com.hc.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hc.web.po.StudentDesc;
import com.hc.web.service.SuccstudentService;

@Controller
public class SuccstudentController {
	
	@Autowired
	private SuccstudentService succstudentService;
	
	@RequestMapping("/student_*.action")
	public String toStuDesc(HttpServletRequest request,Model model){
		StringBuffer requestURL = request.getRequestURL();
		int begin = requestURL.lastIndexOf("_") + 1;
		int end = requestURL.lastIndexOf(".action");
		String studescid = requestURL.substring(begin, end);
		Integer sid = Integer.valueOf(studescid);
		StudentDesc studentDesc = succstudentService.getStuDescById(sid);
		model.addAttribute("studentDesc", studentDesc);
		return "studesc";
	}
	
	
	
}
