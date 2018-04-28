package com.hc.web.service;

import java.util.List;

import com.hc.web.po.Teacher;
import com.hc.web.util.PageBean;

public interface TeacherService {

	PageBean<Teacher> selectByPage(int pageCode);

	List<Teacher> selectByCourse(String course);

}
