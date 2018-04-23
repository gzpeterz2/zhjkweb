package com.hc.web.service.impl;

import org.apache.tomcat.util.security.MD5Encoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.web.mapper.LoginMapper;
import com.hc.web.po.WebUser;
import com.hc.web.service.LoginService;

/**
 * 登录
 * @author 欧阳亮
 */

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private LoginMapper loginMapper;

	@Override
	public WebUser getUserByCodePassword(WebUser webUser) {
		String password = MD5Encoder.encode(webUser.getU_password().getBytes());
		WebUser webuser = loginMapper.getUserByCode(webUser.getU_code());
		if (webuser != null) {
			String u_password = webuser.getU_password();
			if (u_password.equals(password)) {
				return webuser;
			} else {
				return null;
			}
			
		} else {
			return null;
		}
		
	}

}
