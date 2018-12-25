package com.asiainfo.abdinfo.po;

import java.io.Serializable;

public class Portipolio implements Serializable{
	
	
	private static final long serialVersionUID = 8352235505054752480L;
	private String staffCode;//人员编码
	private String itegral;//积分
	private String year;//年份
	private String month;//月份
	private String money;//金额
	public Portipolio() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Portipolio(String staffCode, String itegral, String year, String month, String money) {
		super();
		this.staffCode = staffCode;
		this.itegral = itegral;
		this.year = year;
		this.month = month;
		this.money = money;
	}
	public String getStaffCode() {
		return staffCode;
	}
	public void setStaffCode(String staffCode) {
		this.staffCode = staffCode;
	}
	public String getItegral() {
		return itegral;
	}
	public void setItegral(String itegral) {
		this.itegral = itegral;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	
	

}
