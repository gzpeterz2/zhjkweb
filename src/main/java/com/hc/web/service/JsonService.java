package com.hc.web.service;

import java.util.List;

import com.hc.web.po.Banner;
import com.hc.web.po.Succstudent;

public interface JsonService {
	public List<Succstudent> getSuccList() throws Exception;
	public List<Banner> getHomeBanner() throws Exception;
}
