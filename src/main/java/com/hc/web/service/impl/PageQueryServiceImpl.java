package com.hc.web.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.ComDynamicMapper;
import com.hc.web.mapper.VideoMapper;
import com.hc.web.po.ComDynamic;
import com.hc.web.po.QueryVo;
import com.hc.web.po.Video;
import com.hc.web.service.PageQueryService;
import com.hc.web.util.PageBean;

@Service
public class PageQueryServiceImpl implements PageQueryService {
	@Autowired
	private VideoMapper videoMapper;

	@Override
	public PageBean<Video> pageQuery(QueryVo vo) {
		PageBean<Video> pageBean = new PageBean<>();
		List<Video> videoList = new ArrayList<>();
		Integer pageCode = vo.getPageCode();
		Integer pageSize = vo.getPageSize();
		Integer startRow = (pageCode - 1) * pageSize;
		vo.setStartRow(startRow);

		videoList = videoMapper.pageQuery(vo);
		Integer totalCount = videoMapper.pageCount(vo);
		pageBean.setPageSize(pageSize);
		pageBean.setBeanList(videoList);
		pageBean.setTotalCount(totalCount);
		pageBean.setPageCode(pageCode);
		return pageBean;

	}

	@Autowired
	private ComDynamicMapper comDynamicMapper;
	
	@Override
	public PageBean<ComDynamic> postPageQuery(QueryVo vo) {
		PageBean<ComDynamic> pageBean = new PageBean<>();
		List<ComDynamic> postList = new ArrayList<>();
		Integer pageCode = vo.getPageCode();
		Integer pageSize = vo.getPageSize();
		Integer startRow = (pageCode - 1) * pageSize;
		vo.setStartRow(startRow);
		Integer totalCount = null;
		if (vo.getCondition().equals("original")) {
			postList = comDynamicMapper.originalPageQuery(vo);
			totalCount = comDynamicMapper.originalPageCount(vo);
		} else if(vo.getCondition().equals("last")) {
			postList = comDynamicMapper.lastPageQuery(vo);
			totalCount = comDynamicMapper.lastPageCount(vo);
		} else{
			postList = comDynamicMapper.pageQuery(vo);
			totalCount = comDynamicMapper.pageCount(vo);
		}

		for (ComDynamic comDynamic : postList) {
			String content = comDynamic.getContent();
			if (content!= null && content.length()>80) {
				content = content.substring(0, 80) + "···";
			}
			comDynamic.setContent(content);
		}
		
		pageBean.setPageSize(pageSize);
		pageBean.setBeanList(postList);
		pageBean.setTotalCount(totalCount);
		pageBean.setPageCode(pageCode);
		return pageBean;
	}


}
