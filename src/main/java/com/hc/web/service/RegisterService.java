package com.hc.web.service;

import com.hc.web.po.WebUser;

public interface RegisterService {

	boolean iswebuserexist(String webuser);

	boolean ismailexist(String mail);

	boolean isvalidateright(String validate, String mail);

	void register(WebUser webuser);

	boolean getvalidate(String mail);

}
