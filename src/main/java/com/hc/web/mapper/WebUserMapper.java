package com.hc.web.mapper;

import com.hc.web.po.WebUser;

public interface WebUserMapper {
	WebUser getUserById(Integer id);

	WebUser getUserByCode(String u_code);
}
