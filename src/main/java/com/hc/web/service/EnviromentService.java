package com.hc.web.service;

import java.sql.SQLException;
import java.util.List;

import com.hc.web.po.Enviroment;

public interface EnviromentService {
	
	public List<Enviroment> getList() throws SQLException;
}
