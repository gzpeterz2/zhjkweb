package com.hc.web.mapper;

import java.util.List;

import com.hc.web.po.Teacher;
import com.hc.web.util.QueryVo;

public interface TeacherMapper {

	List<Teacher> selectByPage(QueryVo vo);

	int selectCount();

}
