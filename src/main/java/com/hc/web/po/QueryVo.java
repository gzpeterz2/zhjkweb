package com.hc.web.po;



/**
 * 分页查询pojo
 * @author 欧阳亮
 */
public class QueryVo {
	
	//客户名称
	private String condition;
	//当前页
	private Integer pageCode;
	//每页数
	private Integer pageSize = 12; 
	//开始行
	private Integer startRow = 0;
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public Integer getPageCode() {
		return pageCode;
	}
	public void setPageCode(Integer pageCode) {
		this.pageCode = pageCode;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getStartRow() {
		return startRow;
	}
	public void setStartRow(Integer startRow) {
		this.startRow = startRow;
	}
	@Override
	public String toString() {
		return "QueryVo [condition=" + condition + ", pageCode=" + pageCode + ", pageSize=" + pageSize + ", startRow="
				+ startRow + "]";
	}
	
	
	
	
	

}
