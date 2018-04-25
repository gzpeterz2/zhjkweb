package com.hc.web.service;

import java.util.List;

import com.hc.web.mapper.ComDynamicMapper;
import com.hc.web.po.ComDynamic;

public interface ComDynamicService {

	List<ComDynamicMapper> findByPage();


}
