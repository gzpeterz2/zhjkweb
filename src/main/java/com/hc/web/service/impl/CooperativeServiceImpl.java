package com.hc.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.CooperativeMapper;
import com.hc.web.po.Cooperative;
import com.hc.web.service.CooperativeService;

@Service
public class CooperativeServiceImpl implements CooperativeService {

	//通过合作状态查询合作企业
	@Autowired
	private CooperativeMapper cooperativeMapper;
	
	@Override
	public List<Cooperative> selectByStatus() {
		int status = 1;
		return cooperativeMapper.selectByStatus(status);
	}

}
