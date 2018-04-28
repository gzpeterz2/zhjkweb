package com.hc.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.TeacherMapper;
import com.hc.web.po.Succstudent;
import com.hc.web.po.Teacher;
import com.hc.web.service.TeacherService;
import com.hc.web.util.PageBean;
import com.hc.web.util.QueryVo;

@Service
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	private TeacherMapper teacherMapper;
	
	//学员天地分页显示每页显示的数据数量size
	@Value("${TEACHERS_PAGE_SIZE}")
	private int TEACHERS_PAGE_SIZE;
	
	@Override
	public PageBean<Teacher> selectByPage(int pageCode) {
		PageBean<Teacher> pageBean = new PageBean<Teacher>();
		//设置查询条件
		QueryVo vo = new QueryVo();
		//当前页
		vo.setPageCode(pageCode);
		//每页显示记录数
		vo.setPageSize(TEACHERS_PAGE_SIZE);
		int beginIndex=(pageCode-1)*TEACHERS_PAGE_SIZE;
		//查询开始索引
		vo.setBeginIndex(beginIndex);
		//分页查询返回集合
		List<Teacher> list = teacherMapper.selectByPage(vo);
		int pageCount=teacherMapper.selectCount();
		//设置返回值总记录数
		pageBean.setTotalCount(pageCount);
		//设置返回值集合类型
		pageBean.setBeanList(list);
		//设置返回值每页显示记录数
		pageBean.setPageSize(TEACHERS_PAGE_SIZE);
		//设置当前页
		pageBean.setPageCode(pageCode);
		return pageBean;
	}

	@Override
	public List<Teacher> selectByCourse(String course) {
		return teacherMapper.selectByCourse(course);
	}

}
