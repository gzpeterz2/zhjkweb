package com.hc.web.mapper;

import java.util.List;

import com.hc.web.po.ComDynamic;
import com.hc.web.po.QueryVo;

public interface ComDynamicMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ComDynamic record);

    int insertSelective(ComDynamic record);

    ComDynamic selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ComDynamic record);

    int updateByPrimaryKey(ComDynamic record);

	List<ComDynamicMapper> findByPage();

	List<ComDynamic> getPostList();

	Integer getTotalCount();

	List<ComDynamic> pageQuery(QueryVo vo);

	Integer pageCount(QueryVo vo);

	List<ComDynamic> originalPageQuery(QueryVo vo);

	Integer originalPageCount(QueryVo vo);

	List<ComDynamic> lastPageQuery(QueryVo vo);

	Integer lastPageCount(QueryVo vo);

	void incrViewsById(Integer aid);

	Integer getCountByType(String string);

}