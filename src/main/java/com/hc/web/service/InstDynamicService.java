package com.hc.web.service;

import java.util.List;

import com.hc.web.mapper.InstDynamicMapper;
import com.hc.web.po.InstDynamic;
import com.hc.web.util.PageBean;
import com.hc.web.util.QueryVo;

public interface InstDynamicService {
	
	//获取前五条记录
	public List<InstDynamic> findByPage();

	public PageBean<InstDynamic> queryByPage(QueryVo vo);

	public InstDynamic getInstDynamicDescById(Integer artId);

	public List<InstDynamic> getOtherList(Integer artId);
	//获取当前记录的上一条记录
	public InstDynamic getBeforeId(Integer artId);
	//获取当前记录的下一条记录
	public InstDynamic getAfterId(Integer artId);

}
