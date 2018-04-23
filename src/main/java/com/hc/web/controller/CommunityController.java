package com.hc.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hc.web.po.ComDynamic;
import com.hc.web.po.Comment;
import com.hc.web.po.QueryVo;
import com.hc.web.po.Video;
import com.hc.web.service.CommunityService;
import com.hc.web.service.PageQueryService;
import com.hc.web.util.PageBean;



/**
 * 知海社区
 * @author 欧阳亮
 */
@Controller
public class CommunityController {
	
	@Autowired
	private CommunityService communityService;
	
	@RequestMapping("/community")
	public String toCommunity(Model model){
		List<ComDynamic> postList = communityService.getPostList();
		Integer totalCount = communityService.totalCount();
		PageBean<ComDynamic> pageBean = new PageBean<>();
		pageBean.setBeanList(postList);
		pageBean.setPageCode(1);
		pageBean.setTotalCount(totalCount);
		pageBean.setPageSize(8);
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("condition", "");
		return "community";
	}
	
	@Autowired
	private PageQueryService pageQueryService;
	
	@RequestMapping("/postPageQuery")
	public String pageQuery(QueryVo vo,Model model){
		vo.setPageSize(8);
		
		PageBean<ComDynamic> pageBean = pageQueryService.postPageQuery(vo);
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("condition", vo.getCondition());
		return "community";
	}
	
	@RequestMapping("/article_*")
	public String toArticle(HttpServletRequest request,Model model,QueryVo vo){
		StringBuffer requestURL = request.getRequestURL();
		int begin = requestURL.lastIndexOf("_") + 1;
		int end = requestURL.lastIndexOf(".action");
		String articleId = requestURL.substring(begin, end);
		Integer aid = Integer.valueOf(articleId);
		ComDynamic article = communityService.getArticleById(aid);
		if (StringUtils.isBlank(vo.getCondition())) {
			vo.setCondition(aid.toString());
		}
		PageBean<Comment> comment = pageQueryService.commentPageQuery(vo);
		model.addAttribute("article",article);
		model.addAttribute("pageBean", comment);
		return "article";
	}
	
	
	
	
	
}
