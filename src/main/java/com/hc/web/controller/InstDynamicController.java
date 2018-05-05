package com.hc.web.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hc.web.mapper.InstDynamicMapper;
import com.hc.web.po.Banner;
import com.hc.web.po.InstDynamic;
import com.hc.web.po.StudentDesc;
import com.hc.web.service.InstDynamicService;
import com.hc.web.util.PageBean;
import com.hc.web.util.QueryVo;


@Controller
public class InstDynamicController {
	@Autowired
	private InstDynamicService instDynamicService;
	
	//分页查询学院动态记录	
	@RequestMapping("/instDynamicPageQuery.action")	
	public String queryByPage(QueryVo vo,Model model){
		/*PageBean<InstDynamicMapper> pageBean = new PageBean<InstDynamicMapper>();
		pageBean.setPageCode(1);
		pageBean.setPageSize(5);*/
		
		PageBean<InstDynamic> pageBean = instDynamicService.queryByPage(vo);
		System.out.println(pageBean);
		model.addAttribute("pageBean", pageBean);
		
		return "dynamic";		
	}
	
	@RequestMapping("/instDynamic_*.action")
	public String toStuDesc(HttpServletRequest request,Model model){
		StringBuffer requestURL = request.getRequestURL();
		int begin = requestURL.lastIndexOf("_") + 1;
		int end = requestURL.lastIndexOf(".action");
		String instDynamicid = requestURL.substring(begin, end);
		Integer artId = Integer.valueOf(instDynamicid);
		
		InstDynamic instDynamic = instDynamicService.getInstDynamicDescById(artId);
		//获取当前记录的上一条记录
		InstDynamic before = instDynamicService.getBeforeId(artId);
		//获取当前记录的下一条记录
		InstDynamic after = instDynamicService.getAfterId(artId);
		//获取6（根据页面显示条数调整）条其他资讯
		List<InstDynamic> list = instDynamicService.getOtherList(artId);
		
		model.addAttribute("instDynamic", instDynamic);
		model.addAttribute("before", before);
		model.addAttribute("after", after);
		model.addAttribute("hotList", list);
		
		return "details";
	}
	
}
