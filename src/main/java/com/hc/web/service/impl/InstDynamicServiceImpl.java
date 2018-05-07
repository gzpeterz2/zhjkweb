package com.hc.web.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.service.InstDynamicService;
import com.hc.web.util.PageBean;
import com.hc.web.util.QueryVo;
import com.hc.web.mapper.InstDynamicMapper;
import com.hc.web.po.InstDynamic;
@Service
public class InstDynamicServiceImpl implements InstDynamicService {
	@Autowired
	private InstDynamicMapper instDynamicMapper;
	
	
	@Override
	public List<InstDynamic> findByPage() {
		//获取前五条记录
		return instDynamicMapper.findByPage();
	}

	//分页查询
	@Override
	public PageBean<InstDynamic> queryByPage(QueryVo vo) {
		PageBean<InstDynamic> pageBean = new PageBean<InstDynamic>();
		int pageSize = 18;
		vo.setPageSize(pageSize);
		int pageCode = vo.getPageCode();
		int beginIndex = (pageCode - 1) * pageSize;
		vo.setBeginIndex(beginIndex);
		
		pageBean.setPageCode(pageCode);
		pageBean.setPageSize(vo.getPageSize());
		
		int totalCount = instDynamicMapper.getTotalCount();
		pageBean.setTotalCount(totalCount);
		int totalPage = pageBean.getTotalPage();
		pageBean.setTotalPage(totalPage);
		
		List<InstDynamic> list = new ArrayList<InstDynamic>();
		
		list  = instDynamicMapper.queryByPage(vo);
		pageBean.setBeanList(list);
		
		return pageBean;
	}

	@Override
	public InstDynamic getInstDynamicDescById(Integer artId) {
		
		return instDynamicMapper.findById(artId);
	}

	@Override
	public List<InstDynamic> getOtherList(Integer artId) {
		
		return instDynamicMapper.getListExt(artId);
	}

	//获取当前记录的上一条记录
	@Override
	public InstDynamic getBeforeId(Integer artId) {
		
		return instDynamicMapper.findBeforeId(artId);
	}

	//获取当前记录的下一条记录
	@Override
	public InstDynamic getAfterId(Integer artId) {
		
		return instDynamicMapper.findAfterId(artId);
	}

}
