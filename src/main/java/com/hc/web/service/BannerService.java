package com.hc.web.service;

import java.sql.SQLException;

import com.hc.web.po.Banner;

public interface BannerService {

	public Banner selectByLocation(String location) throws SQLException;
}
