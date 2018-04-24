package com.hc.web.mapper;

import java.util.List;

import com.hc.web.po.Comment;
import com.hc.web.po.QueryVo;

public interface CommentMapper {

	List<Comment> commentPageQuery(QueryVo vo);

	Integer commnetTotalCount(QueryVo vo);

	void insertSelective(Comment comment);

	Integer getCountByType(String string);
	
	
}
