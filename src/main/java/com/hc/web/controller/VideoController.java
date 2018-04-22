package com.hc.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hc.web.po.QueryVo;
import com.hc.web.po.Video;
import com.hc.web.service.PageQueryService;
import com.hc.web.service.VideoService;
import com.hc.web.util.PageBean;

@Controller
public class VideoController {
	@Autowired
	private VideoService videoService;
	@Autowired
	private PageQueryService pageQueryService;
	
	@RequestMapping("/{videoId}")
	public String toVideoDesc(@PathVariable String videoId,Model model){
		videoId = videoId.substring( videoId.lastIndexOf("_") + 1);
		Integer vid = Integer.valueOf(videoId);
		Video video = videoService.getVideoDescById(vid);
		model.addAttribute("video",video);
		return "video_desc";
	}
	
	
	@RequestMapping("/video")
	public String toVideoList(Model model){
		List<Video> videoList = videoService.getVideoList();
		Integer totalCount = videoService.totalCount();
		PageBean<Video> pageBean = new PageBean<>();
		pageBean.setBeanList(videoList);
		pageBean.setPageCode(1);
		pageBean.setTotalCount(totalCount);
		pageBean.setPageSize(12);
		model.addAttribute("pageBean", pageBean);
		return "video";
	}
	
	@RequestMapping("/videoPageQuery")
	public String pageQuery(QueryVo vo,Model model){
		System.out.println(vo);
		PageBean<Video> pageBean = pageQueryService.pageQuery(vo);
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("condition", vo.getCondition());
		return "video";
	}
	
	

}
