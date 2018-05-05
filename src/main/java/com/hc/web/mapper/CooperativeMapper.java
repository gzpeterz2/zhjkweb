package com.hc.web.mapper;

import java.util.List;

import com.hc.web.po.Cooperative;

public interface CooperativeMapper {

	//通过合作状态查询合作企业
	List<Cooperative> selectByStatus(int status);
}
