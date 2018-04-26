package com.hc.web.mapper;

import java.util.List;

import com.hc.web.po.StudentDesc;
import com.hc.web.po.Succstudent;
import com.hc.web.util.QueryVo;

public interface SuccstudentMapper {
	
	//查询所有学员信息
	public List<Succstudent> selectAll() throws Exception;
	//分页查询学员信息
	public List<Succstudent> selectByPage(QueryVo vo);
	//查询学员总记录
	public int selectCount();
	
	public StudentDesc getStuDescById(Integer sid);
}
