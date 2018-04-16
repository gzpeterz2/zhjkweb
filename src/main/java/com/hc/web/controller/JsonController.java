package com.hc.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hc.web.po.Banner;
import com.hc.web.po.Succstudent;
import com.hc.web.service.JsonService;

@Controller
@RequestMapping("/json")
public class JsonController {
	
	@Autowired
	private JsonService jsonService;
	
	@RequestMapping("/succstudent.action")
	public @ResponseBody List<Succstudent> succstudentList() throws Exception {
		List<Succstudent> list = jsonService.getSuccList();
		for (Succstudent succstudent : list) {
			System.out.println(succstudent);
		}
		return list;
	}

	@RequestMapping("/homeBanner.action")
	public @ResponseBody List<Banner> getHomeBanner() throws Exception {
		List<Banner> list = jsonService.getHomeBanner();
		return list;
	}
}
