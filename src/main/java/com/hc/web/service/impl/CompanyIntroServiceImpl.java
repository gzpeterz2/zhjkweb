package com.hc.web.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.BannerMapper;
import com.hc.web.mapper.CompanyIntroMapper;
import com.hc.web.po.Banner;
import com.hc.web.po.CompanyIntro;
import com.hc.web.service.CompanyIntroService;

@Service
public class CompanyIntroServiceImpl implements CompanyIntroService {

	@Autowired
	private CompanyIntroMapper companyIntroMapper;
	
	@Autowired
	private BannerMapper bannerMapper;
	
	//通过显示状态查询企业简介
	@Override
	public List<CompanyIntro> selectByStatus() {
		int status = 1;
		return companyIntroMapper.selectByStatus(status);
	}
	
	//通过location查询banner
	@Override
	public Banner selectByLocation() throws SQLException {
		String location="school";
		return bannerMapper.selectByLocation(location).get(0);
	}
	

}
