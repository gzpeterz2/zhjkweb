package com.hc.web.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hc.web.mapper.ComDynamicMapper;
import com.hc.web.mapper.CommentMapper;
import com.hc.web.po.ComDynamic;
import com.hc.web.po.Statistics;
import com.hc.web.service.CommunityService;


/**
 * 
 * 知海社区
 * @author 欧阳亮
 */

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

	@Override
	public void addArticle(ComDynamic comDynamic) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		comDynamic.setEdit_time(sdf.format(new Date()));
		comDynamic.setPostTime(sdf.format(new Date()));
		
		int insertSelective = comDynamicMapper.insertSelective(comDynamic);
		if (insertSelective == 1) {
			System.out.println("添加成功");
		}
	}

	@Autowired
	private CommentMapper commentMapper;
	
	@Override
	public Statistics getStatistics() {
		Integer resTopicNum = comDynamicMapper.getCountByType("resource");
		Integer tecTopicNum = comDynamicMapper.getCountByType("technology");
		Integer newTopicNum = comDynamicMapper.getCountByType("new");
		Integer resComNum = commentMapper.getCountByType("resource");
		Integer tecComNum = commentMapper.getCountByType("technology");
		Integer newComNum = commentMapper.getCountByType("new");
		
		Statistics statistics = new Statistics();
		statistics.setResTopicNum(resTopicNum);
		statistics.setTecTopicNum(tecTopicNum);
		statistics.setNewTopicNum(newTopicNum);
		statistics.setResComNum(resComNum);
		statistics.setTecComNum(tecComNum);
		statistics.setNewComNum(newComNum);
		
		return statistics;
	}

}
