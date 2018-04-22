package com.hc.web.service;

import java.util.List;

import com.hc.web.po.Video;

public interface VideoService {
	Video getVideoDescById(Integer videoId);
	List<Video> getVideoList();
	Integer totalCount();
}
