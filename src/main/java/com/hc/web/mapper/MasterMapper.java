package com.hc.web.mapper;

import java.util.List;

import com.hc.web.po.Master;

public interface MasterMapper {
	//通过是否显示状态查询大咖
	List<Master> selectByStatus(int status);
}
