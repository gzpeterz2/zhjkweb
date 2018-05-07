package com.hc.web.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.EnvironmentMapper;
import com.hc.web.po.Enviroment;
import com.hc.web.service.EnviromentService;
@Service
public class EnviromentServiceImpl implements EnviromentService {
	@Autowired
	private EnvironmentMapper enviromentMapper;
	@Override
	public List<Enviroment> getList() throws SQLException {
		
		return enviromentMapper.selectAll();
	}

}
