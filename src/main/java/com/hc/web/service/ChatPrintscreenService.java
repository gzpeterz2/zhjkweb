package com.hc.web.service;

import java.util.List;

import com.hc.web.po.ChatPrintscreen;

public interface ChatPrintscreenService {

	//查询指定数量图片
	List<ChatPrintscreen> selectByNum(int num);
}
