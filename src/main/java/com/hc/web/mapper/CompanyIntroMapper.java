package com.hc.web.mapper;

import java.util.List;

import com.hc.web.po.CompanyIntro;
import com.hc.web.util.QueryVo;


public interface CompanyIntroMapper {

	//通过显示状态查询公司简介
	public List<CompanyIntro> selectByStatus(int status);
	
}
