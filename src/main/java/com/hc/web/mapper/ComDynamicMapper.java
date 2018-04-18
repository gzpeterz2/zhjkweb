package com.hc.web.mapper;

import java.util.List;

import com.hc.web.po.ComDynamic;

public interface ComDynamicMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ComDynamic record);

    int insertSelective(ComDynamic record);

    ComDynamic selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ComDynamic record);

    int updateByPrimaryKey(ComDynamic record);

	List<ComDynamicMapper> findByPage();
}