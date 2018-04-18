package com.hc.web.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.hc.web.service.InstDynamicService;
import com.hc.web.mapper.InstDynamicMapper;
import com.hc.web.po.InstDynamic;

public class InstDynamicServiceImpl implements InstDynamicService {
	@Autowired
	private InstDynamicMapper instDynamicMapper;
	
	//添加学院动态资讯
	@Override
	public int addDynamic(InstDynamic instDynamic) {
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateform = sdf.format(d);
		
		instDynamic.setPostTime(dateform);
		instDynamic.setViews(0);
		return instDynamicMapper.insert(instDynamic);
	}

	@Override
	public int updateDynamic(InstDynamic instDynamic) {
		instDynamicMapper.updateByPrimaryKey(instDynamic);
		return 0;
	}

	@Override
	public List<InstDynamicMapper> findByPage() {
		//获取前五条记录
		return instDynamicMapper.findByPage();
	}

}
