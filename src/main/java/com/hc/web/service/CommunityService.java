package com.hc.web.service;

import java.util.List;

import com.hc.web.po.ComDynamic;
import com.hc.web.po.Statistics;


public interface CommunityService {

	List<ComDynamic> getPostList();

	Integer totalCount();

	ComDynamic getArticleById(Integer aid);

	void addArticle(ComDynamic comDynamic);

	Statistics getStatistics();

	boolean isThumbupedByArticleIdAndWebuser(Integer aid, Integer uid);


	void thumbupByArticleIdAndWebuser(Integer aid, Integer uid);

}
