package com.hc.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.SuccstudentMapper;
import com.hc.web.po.StudentDesc;
import com.hc.web.po.Succstudent;
import com.hc.web.service.SuccstudentService;
import com.hc.web.util.PageBean;
import com.hc.web.util.QueryVo;
@Service
public class SuccstudentServiceImpl implements SuccstudentService {

	@Autowired
	private SuccstudentMapper succstudentMapper;
	
	//学员天地分页显示每页显示的数据数量size
	@Value("${STUDENT_PAGE_SIZE}")
	private int STUDENT_PAGE_SIZE;
	
	//查询所有学员信息
	@Override
	public List<Succstudent> selectAll() throws Exception {
		return succstudentMapper.selectAll();
	}

	//分页查询学员信息
	@Override
	public PageBean<Succstudent> selectByPage(int pageCode) {
		PageBean<Succstudent> pageBean = new PageBean<Succstudent>();
		//设置查询条件
		QueryVo vo = new QueryVo();
		//当前页
		vo.setPageCode(pageCode);
		//每页显示记录数
		vo.setPageSize(STUDENT_PAGE_SIZE);
		int beginIndex=(pageCode-1)*STUDENT_PAGE_SIZE;
		//查询开始索引
		vo.setBeginIndex(beginIndex);
		//分页查询返回集合
		List<Succstudent> list = succstudentMapper.selectByPage(vo);
		int pageCount=succstudentMapper.selectCount();
		//设置返回值总记录数
		pageBean.setTotalCount(pageCount);
		//设置返回值集合类型
		pageBean.setBeanList(list);
		//设置返回值每页显示记录数
		pageBean.setPageSize(STUDENT_PAGE_SIZE);
		//设置当前页
		pageBean.setPageCode(pageCode);
		return pageBean;
	}

	@Override
	public StudentDesc getStuDescById(Integer sid) {
		StudentDesc stuDesc = succstudentMapper.getStuDescById(sid);
		return stuDesc;
	}

}
