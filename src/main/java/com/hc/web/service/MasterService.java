package com.hc.web.service;

import java.util.List;

import com.hc.web.po.Master;

/**
 * 大咖管理Service接口
 * @author Administrator
 *
 */
public interface MasterService {

	List<Master> selectByStatus();
	
}
