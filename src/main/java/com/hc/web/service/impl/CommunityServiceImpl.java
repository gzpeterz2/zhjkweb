package com.hc.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hc.web.mapper.ComDynamicMapper;
import com.hc.web.po.ComDynamic;
import com.hc.web.service.CommunityService;

@Service
@Transactional
public class CommunityServiceImpl implements CommunityService {
	
	@Autowired
	private ComDynamicMapper comDynamicMapper;

	@Override
	public List<ComDynamic> getPostList() {
		List<ComDynamic> postList = comDynamicMapper.getPostList();
		for (ComDynamic comDynamic : postList) {
			String content = comDynamic.getContent();
			if (content!= null && content.length()>80) {
				content = content.substring(0, 80) + "···";
			}
			comDynamic.setContent(content);
		}
		return postList;
	}

	@Override
	public Integer totalCount() {
		
		Integer totalCount = comDynamicMapper.getTotalCount();
		return totalCount;
	}

	@Override
	public ComDynamic getArticleById(Integer aid) {
		comDynamicMapper.incrViewsById(aid);
		ComDynamic article = comDynamicMapper.selectByPrimaryKey(aid);
		String type = article.getType();
		switch (type) {
		case "resource":
			article.setType("资源分享");
			break;
		case "technology":
			article.setType("技术交流");
			break;
		case "new":
			article.setType("最新活动");
			break;
		default:
			break;
		}
		
		return article;
	}

}
