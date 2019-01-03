package com.asiainfo.abdinfo.po;

import java.io.Serializable;

public class UserUser implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String staffCode;
	
	private String staffPwd;
	
	private String staffName;
	
	//部门
	private String department;
	
	//事业部
	private String division;
	
	//岗位
	private String jobs;
	
	//数据级别
	private String Datalevel;
	
	//手机号码
	private String phoneNumber;
	
	private String microNumber;
	
	

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getStaffCode() {
		return staffCode;
	}

	public void setStaffCode(String staffCode) {
		this.staffCode = staffCode;
	}

	public String getStaffPwd() {
		return staffPwd;
	}

	public void setStaffPwd(String staffPwd) {
		this.staffPwd = staffPwd;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public String getDatalevel() {
		return Datalevel;
	}

	public void setDatalevel(String datalevel) {
		Datalevel = datalevel;
	}

	
	public String getJobs() {
		return jobs;
	}

	public void setJobs(String jobs) {
		this.jobs = jobs;
	}

	public String getMicroNumber() {
		return microNumber;
	}

	public void setMicroNumber(String microNumber) {
		this.microNumber = microNumber;
	}

	@Override
	public String toString() {
		return "UserUser [staffCode=" + staffCode + ", staffPwd=" + staffPwd + ", staffName=" + staffName
				+ ", department=" + department + ", division=" + division + ", jobs=" + jobs + ", Datalevel="
				+ Datalevel + ", phoneNumber=" + phoneNumber + ", microNumber=" + microNumber + "]";
	}

	
	
	

}
