package com.hc.web.mapper;

import java.util.List;

import com.hc.web.po.InstDynamic;

public interface InstDynamicMapper {
    int deleteByPrimaryKey(Integer artId);
  //添加学院动态资讯
    int insert(InstDynamic record);

    int insertSelective(InstDynamic record);

    InstDynamic selectByPrimaryKey(Integer artId);

    int updateByPrimaryKeySelective(InstDynamic record);

    int updateByPrimaryKeyWithBLOBs(InstDynamic record);

    int updateByPrimaryKey(InstDynamic record);
    //获取指定数量记录
	List<InstDynamicMapper> findByPage();
}