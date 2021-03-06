package com.hc.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.BannerMapper;
import com.hc.web.mapper.ComDynamicMapper;
import com.hc.web.po.ComDynamic;
import com.hc.web.service.ComDynamicService;
@Service
public class ComDynamicServiceImpl implements ComDynamicService {
	@Autowired
	private ComDynamicMapper comDynamicMapper;

	@Override
	public List<ComDynamic> findByPage() {
		
		return comDynamicMapper.findByPage();
	}
}
