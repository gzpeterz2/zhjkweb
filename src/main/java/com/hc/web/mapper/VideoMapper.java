package com.hc.web.mapper;

import java.util.List;

import com.hc.web.po.QueryVo;
import com.hc.web.po.Video;

public interface VideoMapper {
	
	public List<Video> getVideo();
	public Video getVideoDescById(Integer videoId);
	public List<Video> getVideoList();
	public List<Video> pageQuery(QueryVo vo);
	public Integer pageCount(QueryVo vo);
	public Integer pageCountAll();
	
	
}
