package com.hc.web.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.ComDynamicMapper;
import com.hc.web.mapper.CommentMapper;
import com.hc.web.mapper.VideoMapper;
import com.hc.web.mapper.WebUserMapper;
import com.hc.web.po.ComDynamic;
import com.hc.web.po.Comment;
import com.hc.web.po.QueryVo;
import com.hc.web.po.Video;
import com.hc.web.po.WebUser;
import com.hc.web.service.PageQueryService;
import com.hc.web.util.PageBean;


/**
 * 分页查询 
 * @author 欧阳亮
 *
 * */

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

	@Autowired
	private CommentMapper commentMapper;
	@Autowired
	private WebUserMapper webUserMapper;
	
	@Override
	public PageBean<Comment> commentPageQuery(QueryVo vo) {
		
		vo.setPageSize(8);
		Integer pageCode = vo.getPageCode();
		if (pageCode == null || pageCode == 0 ) {
			vo.setPageCode(1);
			vo.setStartRow(0);
			pageCode = 1;
		}
		
		vo.setStartRow((pageCode - 1)*vo.getPageSize());
		
		PageBean<Comment> pageBean = new PageBean<>();
		List<Comment> commentList = commentMapper.commentPageQuery(vo);
		
		for (Comment comment : commentList) {
			WebUser webUser = webUserMapper.getUserById(comment.getC_uid());
			comment.setWebUser(webUser);
		}
		
		Integer totalCount = commentMapper.commnetTotalCount(vo);
		pageBean.setBeanList(commentList);
		pageBean.setPageCode(vo.getPageCode());
		pageBean.setPageSize(vo.getPageSize());
		pageBean.setTotalCount(totalCount);
		
		return pageBean;
	}


}
