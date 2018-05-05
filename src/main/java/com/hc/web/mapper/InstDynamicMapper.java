package com.hc.web.mapper;

import java.util.ArrayList;
import java.util.List;

import com.hc.web.po.InstDynamic;
import com.hc.web.util.QueryVo;

public interface InstDynamicMapper {
   
    //获取指定数量记录
	public List<InstDynamic> findByPage();

	public int getTotalCount();

	public List<InstDynamic> queryByPage(QueryVo vo);

	public InstDynamic findById(Integer artId);

	public List<InstDynamic> getListExt(Integer artId);
	//获取当前记录的上一条记录
	public InstDynamic findBeforeId(Integer artId);
	//获取当前记录的下一条记录
	public InstDynamic findAfterId(Integer artId);
}