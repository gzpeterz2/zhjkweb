package com.hc.web.service;

import java.util.List;

import com.hc.web.po.HomePage;
import com.hc.web.po.Video;

public interface HomeService {
	public HomePage getHomePage() throws Exception;
	public List<Video> getVideoList();
}
