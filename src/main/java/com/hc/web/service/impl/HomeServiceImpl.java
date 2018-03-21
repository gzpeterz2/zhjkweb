package com.hc.web.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.hc.web.mapper.BannerMapper;
import com.hc.web.po.Banner;
import com.hc.web.po.HomePage;
import com.hc.web.service.HomeService;

public class HomeServiceImpl implements HomeService {
	
	@Autowired
	private BannerMapper bannerMapper;

	@Override
	public HomePage getHomePage() throws SQLException {
		HomePage homePage = new HomePage();
		List<Banner> list = bannerMapper.selectByLocation("HomePage");
		homePage.setBigBanner1(list.get(0));
		homePage.setBigBanner2(list.get(1));
		homePage.setBigBanner3(list.get(2));
		return homePage;
	}
}
