package com.hc.web.service;

import java.util.List;

import com.hc.web.mapper.InstDynamicMapper;
import com.hc.web.po.InstDynamic;

public interface InstDynamicService {
	//添加学院动态资讯
	int addDynamic(InstDynamic instDynamic);
	//更新资讯
	int updateDynamic(InstDynamic instDynamic);
	//获取前五条记录
	List<InstDynamicMapper> findByPage();

}
