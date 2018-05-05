package com.hc.web.service;

import java.sql.SQLException;
import java.util.List;

import com.hc.web.po.Banner;
import com.hc.web.po.CompanyIntro;

/**
 * 公司简介service接口
 * @author Administrator
 *
 */
public interface CompanyIntroService {

	List<CompanyIntro> selectByStatus();

	Banner selectByLocation() throws SQLException;
}
