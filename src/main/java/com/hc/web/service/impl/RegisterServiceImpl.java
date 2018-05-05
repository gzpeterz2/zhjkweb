package com.hc.web.service.impl;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.hc.web.mapper.WebUserMapper;
import com.hc.web.po.WebUser;
import com.hc.web.service.RegisterService;
import com.hc.web.util.Mail;
import com.hc.web.util.MailUtils;


@Service
public class RegisterServiceImpl implements RegisterService {
	
	@Autowired
	private WebUserMapper webUserMapper;
	

	@Override
	public boolean iswebuserexist(String webuser) {
		WebUser user = webUserMapper.getUserByCode(webuser);
		if (user != null) {
			return true;
		}
		return false;
	}

	@Override
	public boolean ismailexist(String mail) {
		Integer exist = webUserMapper.getMailCountByMail(mail);
		if (exist != 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean isvalidateright(String validate,String mail) {
		String md5mail = DigestUtils.md5DigestAsHex(mail.getBytes());
		md5mail = md5mail.substring(0, 6);
		System.out.println(md5mail);
		if (md5mail.equals(validate)) {
			return true;
		}
		return false;
	}

	@Override
	public void register(WebUser webuser) {
		boolean iswebuserexist = iswebuserexist(webuser.getU_code());
		boolean ismailexist = ismailexist(webuser.getU_email());
		if (iswebuserexist || ismailexist) {
			return;
		}
		
		
		String ps = webuser.getU_password();
		ps = DigestUtils.md5DigestAsHex(ps.getBytes());
		webuser.setU_password(ps);
		webuser.setU_name(webuser.getU_code());
		webUserMapper.insertWebuser(webuser);
		
	}

	@Value("${MAIL_USERNAME}")
	private String MAIL_USERNAME;
	@Value("${MAIL_PASSWORD}")
	private String MAIL_PASSWORD;
	
	
	@Override
	public boolean getvalidate(String mailstr)  {
		String md5mail = DigestUtils.md5DigestAsHex(mailstr.getBytes());
		md5mail = md5mail.substring(0, 6);
		
		 Session session=MailUtils.createSession("smtp.126.com", MAIL_USERNAME, MAIL_PASSWORD);
	        //public Mail(String from, String to, String subject, String content)
	        //Mail mail=new Mail(MAIL_USERNAME,mailstr,"欢迎您注册知海社区，请使用验证码激注册账号","http://127.0.0.1:8080/zhjkweb/active.action?msg="+mailstr+md5mail);
		 	Mail mail=new Mail(MAIL_USERNAME,mailstr,"欢迎您来到知海社区，请使用验证码完成您的账号注册","您的注册验证码为：   <span style='font-size: 24px; color: #66c0f4'>"+md5mail+"</span>");
	        //发送
	        try {
				MailUtils.send(session, mail);
				return true;
			} catch (MessagingException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
	}

}
