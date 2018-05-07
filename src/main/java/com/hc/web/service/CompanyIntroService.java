package com.hc.web.service;

import java.util.List;

import com.hc.web.po.CompanyIntro;

/**
 * 公司简介service接口
 * @author Administrator
 *
 */
public interface CompanyIntroService {

	List<CompanyIntro> selectByStatus();

}
