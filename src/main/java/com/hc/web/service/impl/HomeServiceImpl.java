package com.hc.web.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.BannerMapper;
import com.hc.web.mapper.VideoMapper;
import com.hc.web.po.Banner;
import com.hc.web.po.HomePage;
import com.hc.web.po.Video;
import com.hc.web.service.HomeService;


@Service
public class HomeServiceImpl implements HomeService {
	
	@Autowired
	private BannerMapper bannerMapper;
	@Autowired
	private VideoMapper videoMapper;

	@Override
	public HomePage getHomePage() throws SQLException {
		
		HomePage homePage = new HomePage();
		List<Banner> list = bannerMapper.selectByLocation("HomePage");
		homePage.setBigBanner1(list.get(0));
		homePage.setBigBanner2(list.get(1));
		homePage.setBigBanner3(list.get(2));
		return homePage;
	}

	@Override
	public List<Video> getVideoList() {
		List<Video> videoList = videoMapper.getVideo();
		return videoList;
	}
}
