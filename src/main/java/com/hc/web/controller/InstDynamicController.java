package com.hc.web.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hc.web.mapper.InstDynamicMapper;
import com.hc.web.po.Banner;
import com.hc.web.po.InstDynamic;
import com.hc.web.service.InstDynamicService;
import com.hc.web.util.PageBean;


@Controller
@RequestMapping("/instDynamic")
public class InstDynamicController {
	@Autowired
	private InstDynamicService instDynamicService;
	
	@RequestMapping("/addDynamic.action")
	public String addDynamic(Model model, InstDynamic instDynamic){
		System.out.println(instDynamic);
		int code = instDynamicService.addDynamic(instDynamic);
		if(code == 1){
			
			return "test";		
		}
		return "error";
	}
	//获取学员动态前五条记录
	@RequestMapping("/findByPage.action")
	@ResponseBody
	public List<InstDynamicMapper> findByPage(){
		/*PageBean<InstDynamicMapper> pageBean = new PageBean<InstDynamicMapper>();
		pageBean.setPageCode(1);
		pageBean.setPageSize(5);*/
		
		List<InstDynamicMapper> list = new ArrayList<InstDynamicMapper>();
		list = instDynamicService.findByPage();
		
		return list;
		
	}
	
	
}
