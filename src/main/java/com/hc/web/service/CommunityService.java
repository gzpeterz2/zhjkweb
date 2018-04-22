package com.hc.web.service;

import java.util.List;

import com.hc.web.po.ComDynamic;


public interface CommunityService {

	List<ComDynamic> getPostList();

	Integer totalCount();

	ComDynamic getArticleById(Integer aid);

}
