package com.hc.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.VideoMapper;
import com.hc.web.po.Video;
import com.hc.web.service.VideoService;

/**
 * 视频页
 * @author 欧阳亮
 */

@Service
public class VideoServiceImpl implements VideoService{

	@Autowired
	private VideoMapper videoMapper;
	
	@Override
	public Video getVideoDescById(Integer videoId) {
		Video video = videoMapper.getVideoDescById(videoId);
		return video;
	}

	@Override
	public List<Video> getVideoList() {
		 List<Video> videoList = videoMapper.getVideoList();
		return videoList;
	}

	@Override
	public Integer totalCount() {
		Integer totalCount = videoMapper.pageCountAll();
		return totalCount;
	}

}
