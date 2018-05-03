package com.hc.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hc.web.po.Comment;
import com.hc.web.po.WebUser;
import com.hc.web.service.CommentService;


/**
 * 评论提交
 * @author ouyangliang
 */
@Controller
public class CommentController {
	
	@Autowired
	private CommentService commentService;
	
	@RequestMapping("/commentsubmit")
	public String commentSubmit(Comment comment,HttpServletRequest request){
		HttpSession session = request.getSession();
		WebUser user = (WebUser) session.getAttribute("user");
		if (user == null) {
			return "redirect:tologin.action";
		}
		comment.setC_uid(user.getU_id());
		commentService.addComment(comment);
		return "redirect:article_"+ comment.getC_articleid() +".action";
	}
	

}
