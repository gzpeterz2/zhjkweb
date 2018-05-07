package com.hc.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.CompanyIntroMapper;
import com.hc.web.po.CompanyIntro;
import com.hc.web.service.CompanyIntroService;

@Service
public class CompanyIntroServiceImpl implements CompanyIntroService {

	@Autowired
	private CompanyIntroMapper companyIntroMapper;
	
	//通过显示状态查询企业简介
	@Override
	public List<CompanyIntro> selectByStatus() {
		int status = 1;
		return companyIntroMapper.selectByStatus(status);
	}

}
