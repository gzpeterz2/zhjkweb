package com.hc.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.BannerMapper;
import com.hc.web.mapper.SuccstudentMapper;
import com.hc.web.po.Banner;
import com.hc.web.po.Succstudent;
import com.hc.web.service.JsonService;
@Service
public class JsonServiceImpl implements JsonService {
	@Autowired
	private SuccstudentMapper succstudentMapper;
	
	@Autowired
	private BannerMapper bannerMapper;

	@Override
	public List<Succstudent> getSuccList() throws Exception {
		return succstudentMapper.selectAll();
	}

	@Override
	public List<Banner> getHomeBanner() throws Exception {
		return bannerMapper.selectByLocation("HomePage");
	}

}
