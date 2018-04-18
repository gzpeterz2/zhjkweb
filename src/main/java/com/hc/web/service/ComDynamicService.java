package com.hc.web.service;

import java.util.List;

import com.hc.web.mapper.ComDynamicMapper;

public interface ComDynamicService {

	List<ComDynamicMapper> findByPage();

}
