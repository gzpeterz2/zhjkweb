package com.hc.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.ChatPrintscreenMapper;
import com.hc.web.po.ChatPrintscreen;
import com.hc.web.service.ChatPrintscreenService;

@Service
public class ChatPrintscreenServiceImpl implements ChatPrintscreenService {
	
	@Autowired
	private ChatPrintscreenMapper chatPrintscreenMapper;
	
	//查询指定数量图片
	@Override
	public List<ChatPrintscreen> selectByNum(int num) {
		return chatPrintscreenMapper.selectByNum(num);
	}

}
