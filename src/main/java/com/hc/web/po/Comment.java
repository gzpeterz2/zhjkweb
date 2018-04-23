package com.hc.web.po;


/**
 * 文章评论回复pojo
 * @author 欧阳亮
 */
public class Comment {
	  private Integer c_id;
	  private String c_time;
	  private Integer c_thumbups;
	  private Integer c_uid;
	  private Integer c_articleid;
	  private String c_content;
	  private String c_thumbuper;
	  private WebUser webUser;
	  
	  
	public WebUser getWebUser() {
		return webUser;
	}
	public void setWebUser(WebUser webUser) {
		this.webUser = webUser;
	}
	public Integer getC_thumbups() {
		return c_thumbups;
	}
	public void setC_thumbups(Integer c_thumbups) {
		this.c_thumbups = c_thumbups;
	}
	public Integer getC_id() {
		return c_id;
	}
	public void setC_id(Integer c_id) {
		this.c_id = c_id;
	}
	public String getC_time() {
		return c_time;
	}
	public void setC_time(String c_time) {
		this.c_time = c_time;
	}
	public Integer getC_uid() {
		return c_uid;
	}
	public void setC_uid(Integer c_uid) {
		this.c_uid = c_uid;
	}
	public Integer getC_articleid() {
		return c_articleid;
	}
	public void setC_articleid(Integer c_articleid) {
		this.c_articleid = c_articleid;
	}
	public String getC_content() {
		return c_content;
	}
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}
	public String getC_thumbuper() {
		return c_thumbuper;
	}
	public void setC_thumbuper(String c_thumbuper) {
		this.c_thumbuper = c_thumbuper;
	}
	

}
