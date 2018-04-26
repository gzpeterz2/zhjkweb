package com.hc.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hc.web.po.ComDynamic;
import com.hc.web.po.Comment;
import com.hc.web.po.QueryVo;
import com.hc.web.po.Statistics;
import com.hc.web.po.WebUser;
import com.hc.web.service.CommunityService;
import com.hc.web.service.PageQueryService;
import com.hc.web.util.HCResult;
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
		Statistics statistics = communityService.getStatistics();
		PageBean<ComDynamic> pageBean = new PageBean<>();
		pageBean.setBeanList(postList);
		pageBean.setPageCode(1);
		pageBean.setTotalCount(totalCount);
		pageBean.setPageSize(8);
		model.addAttribute("statistics", statistics);
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("condition", "");
		return "community";
	}
	
	@Autowired
	private PageQueryService pageQueryService;
	
	@RequestMapping("/postPageQuery")
	public String pageQuery(QueryVo vo,Model model){
		vo.setPageSize(8);
		Statistics statistics = communityService.getStatistics();
		PageBean<ComDynamic> pageBean = pageQueryService.postPageQuery(vo);
		model.addAttribute("statistics", statistics);
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
	
		
	
	@RequestMapping("/articleThumbup")
	@ResponseBody
	public HCResult thumbup(String artid,HttpServletRequest request){
	
		Integer aid = Integer.valueOf(artid);
		WebUser webUser  = (WebUser) request.getSession().getAttribute("user");
		Integer uid = webUser.getU_id();
		if (webUser != null) {
			boolean thumbuped = communityService.isThumbupedByArticleIdAndWebuser(aid,uid);
			if (!thumbuped) {
				communityService.thumbupByArticleIdAndWebuser(aid,uid);
				return HCResult.ok();
			}
		}
		return HCResult.build(400, "该用户点过赞了或未登录");
	}
	
	
	
	
}
