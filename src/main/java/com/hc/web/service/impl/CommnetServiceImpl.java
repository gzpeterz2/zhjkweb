package com.hc.web.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.CommentMapper;
import com.hc.web.po.Comment;
import com.hc.web.service.CommentService;


@Service
public class CommnetServiceImpl implements CommentService{

	@Autowired
	private CommentMapper commentMapper;
	@Override
	public void addComment(Comment comment) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		comment.setC_time(sdf.format(new Date()));
		commentMapper.insertSelective(comment);
	}

}
