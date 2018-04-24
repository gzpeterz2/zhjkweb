package com.hc.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.hc.web.mapper.WebUserMapper;
import com.hc.web.po.WebUser;
import com.hc.web.service.LoginService;

/**
 * 登录
 * @author 欧阳亮
 */

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private WebUserMapper webUserMapper;

	@Override
	public WebUser getUserByCodePassword(WebUser webUser) {
		String password = DigestUtils.md5DigestAsHex(webUser.getU_password().getBytes());
		WebUser webuser = webUserMapper.getUserByCode(webUser.getU_code());
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
