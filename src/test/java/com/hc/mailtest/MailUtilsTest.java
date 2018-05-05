package com.hc.mailtest;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.Session;

import org.junit.Test;

import com.hc.web.util.Mail;
import com.hc.web.util.MailUtils;




public class MailUtilsTest {
    /*** 发邮件 
     * @throws IOException 
     * @throws MessagingException ***/
    //@Test
    public void sendMail() throws MessagingException, IOException{
        /**
         * 1.登录邮件服务器
         *     MailUtils.createSession(服务器地址,登录名,密码);
         * 2.创建邮件对象
         *     发件人
         *     收件人
         *     主题
         *     正文
         * 3.发邮件
         *     需要第1步得到的session 以及 第2步的邮件对象
         */
     
        Session session=MailUtils.createSession("smtp.126.com", "coconutyang@126.com", "1986030900oyl");
        //public Mail(String from, String to, String subject, String content)
        Mail mail=new Mail("coconutyang@126.com","187184771@qq.com","测试邮件标题啊","http://127.0.0.1:8080/zhjkweb/active.action?msg=187184771@qq.comd58jt035d32f3");
        //发送
        MailUtils.send(session, mail);
    }
}