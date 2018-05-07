package com.hc.web.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.BannerMapper;
import com.hc.web.po.Banner;
import com.hc.web.service.BannerService;
@Service
public class BannerServiceImpl implements BannerService {

	@Autowired
	private BannerMapper bannerMapper;
	
	public Banner selectByLocation(String location) throws SQLException {
		List<Banner> list = bannerMapper.selectByLocation(location);
		if(list == null){
			return null;
		}else{
			return list.get(0);
		}
	}
	
}
