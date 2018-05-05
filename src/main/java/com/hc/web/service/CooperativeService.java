package com.hc.web.service;

import java.util.List;

import com.hc.web.po.Cooperative;

/**
 * 合作企业管理service接口
 * @author Administrator
 *
 */
public interface CooperativeService {

	List<Cooperative> selectByStatus();

}
