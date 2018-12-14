package com.asiainfo.abdinfo.po;

import java.io.Serializable;

public class Education implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2809480894893235523L;
	private String time;//日期
	private String staffCode;//人员编码
	private String name;//姓名
	private String incident;//事件
	private String inspiration;//个人感悟
	public Education() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Education(String time, String staffCode, String name, String incident, String inspiration) {
		super();
		this.time = time;
		this.staffCode = staffCode;
		this.name = name;
		this.incident = incident;
		this.inspiration = inspiration;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getStaffCode() {
		return staffCode;
	}
	public void setStaffCode(String staffCode) {
		this.staffCode = staffCode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIncident() {
		return incident;
	}
	public void setIncident(String incident) {
		this.incident = incident;
	}
	public String getInspiration() {
		return inspiration;
	}
	public void setInspiration(String inspiration) {
		this.inspiration = inspiration;
	}
	

}
