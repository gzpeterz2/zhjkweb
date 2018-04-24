package com.hc.web.po;

public class Statistics {
	
	private Integer resTopicNum;
	private Integer resComNum;
	private Integer tecTopicNum;
	private Integer tecComNum;
	private Integer newTopicNum;
	private Integer newComNum;
	
	
	public Integer getAllTopicNum(){
		return resTopicNum + tecTopicNum + newTopicNum;
	}
	public Integer getAllComNum(){
		return resComNum + tecComNum + newComNum;
	}
	
	public Integer getResTopicNum() {
		return resTopicNum;
	}
	public void setResTopicNum(Integer resTopicNum) {
		this.resTopicNum = resTopicNum;
	}
	public Integer getResComNum() {
		return resComNum;
	}
	public void setResComNum(Integer resComNum) {
		this.resComNum = resComNum;
	}
	public Integer getTecTopicNum() {
		return tecTopicNum;
	}
	public void setTecTopicNum(Integer tecTopicNum) {
		this.tecTopicNum = tecTopicNum;
	}
	public Integer getTecComNum() {
		return tecComNum;
	}
	public void setTecComNum(Integer tecComNum) {
		this.tecComNum = tecComNum;
	}
	public Integer getNewTopicNum() {
		return newTopicNum;
	}
	public void setNewTopicNum(Integer newTopicNum) {
		this.newTopicNum = newTopicNum;
	}
	public Integer getNewComNum() {
		return newComNum;
	}
	public void setNewComNum(Integer newComNum) {
		this.newComNum = newComNum;
	}
	

}
