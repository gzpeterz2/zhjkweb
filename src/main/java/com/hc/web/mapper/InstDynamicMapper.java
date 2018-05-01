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
}