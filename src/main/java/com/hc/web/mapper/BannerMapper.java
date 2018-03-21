package com.hc.web.mapper;

import java.sql.SQLException;
import java.util.List;

import com.hc.web.po.Banner;

public interface BannerMapper {
	public List<Banner> selectByLocation(String location) throws SQLException;
}
