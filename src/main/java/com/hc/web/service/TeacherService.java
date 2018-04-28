package com.hc.web.service;

import com.hc.web.po.Teacher;
import com.hc.web.util.PageBean;

public interface TeacherService {

	PageBean<Teacher> selectByPage(int pageCode);

}
