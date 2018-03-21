package com.hc.web.po;

public class Succstudent {
	private Integer id;
	private String name;
	private String degree;
	private String enterpirze;
	private Integer salary;
	private String career;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getEnterpirze() {
		return enterpirze;
	}
	public void setEnterpirze(String enterpirze) {
		this.enterpirze = enterpirze;
	}
	public Integer getSalary() {
		return salary;
	}
	public void setSalary(Integer salary) {
		this.salary = salary;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	@Override
	public String toString() {
		return "Succstudent [id=" + id + ", name=" + name + ", degree=" + degree + ", enterpirze=" + enterpirze
				+ ", salary=" + salary + ", career=" + career + "]";
	}
	
}
