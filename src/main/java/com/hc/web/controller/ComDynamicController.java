package com.hc.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hc.web.po.ComDynamic;
import com.hc.web.service.ComDynamicService;


@Controller
@RequestMapping("/comDynamic")
public class ComDynamicController {
	
	@Autowired
	private ComDynamicService comDynamicService;
	//获取学员动态前五条记录
	@RequestMapping("/findByPage.action")
	@ResponseBody
	public List<ComDynamic> findByPage(){
		/*PageBean<InstDynamicMapper> pageBean = new PageBean<InstDynamicMapper>();
		pageBean.setPageCode(1);
		pageBean.setPageSize(5);*/
		
		List<ComDynamic> list = new ArrayList<ComDynamic>();
		list = comDynamicService.findByPage();
		
		return list;
		
	}

}
