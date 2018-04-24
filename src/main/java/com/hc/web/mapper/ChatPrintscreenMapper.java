package com.hc.web.mapper;

import java.util.List;

import com.hc.web.po.ChatPrintscreen;
import com.hc.web.util.QueryVo;

/**
 * 聊天截图Dao
 * @author Administrator
 *
 */
public interface ChatPrintscreenMapper {
	
	//查询指定数量图片
	public List<ChatPrintscreen> selectByNum(int num);
	
}
