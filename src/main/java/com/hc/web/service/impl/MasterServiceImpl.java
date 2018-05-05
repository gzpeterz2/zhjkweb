package com.hc.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.MasterMapper;
import com.hc.web.po.Master;
import com.hc.web.service.MasterService;

@Service
public class MasterServiceImpl implements MasterService {

	@Autowired
	private MasterMapper masterMapper;
	
	//通过是否显示状态查询大咖
	@Override
	public List<Master> selectByStatus() {
		int status=1;
		return masterMapper.selectByStatus(status);
	}

}
