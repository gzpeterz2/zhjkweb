package com.hc.web.service;

import com.hc.web.po.QueryVo;
import com.hc.web.po.Video;
import com.hc.web.util.PageBean;

public interface PageQueryService {

	PageBean<Video> pageQuery(QueryVo vo);


}
