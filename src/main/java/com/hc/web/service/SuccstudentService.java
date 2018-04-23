package com.hc.web.service;

import java.util.List;

import com.hc.web.po.Succstudent;
import com.hc.web.util.PageBean;

public interface SuccstudentService {

	//查询所有学员信息
	List<Succstudent> selectAll() throws Exception;
	//分页查询学员信息
	PageBean<Succstudent> selectByPage(int pageCode);
	
}
