package com.hc.web.mapper;

import com.hc.web.po.WebUser;

public interface LoginMapper {

	WebUser getUserByCode(String u_code);

}
