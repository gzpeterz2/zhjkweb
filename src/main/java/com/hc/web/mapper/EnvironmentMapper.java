package com.hc.web.mapper;

import java.sql.SQLException;
import java.util.List;

import com.hc.web.po.Enviroment;

public interface EnvironmentMapper {

	public int getTotalCount() throws SQLException;
	
	public List<Enviroment> selectAll() throws SQLException;
}
