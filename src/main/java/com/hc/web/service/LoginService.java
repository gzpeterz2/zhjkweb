package com.hc.web.service;

import com.hc.web.po.WebUser;

public interface LoginService {

	WebUser getUserByCodePassword(WebUser webUser);

}
