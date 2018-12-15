package com.asiainfo.abdinfo.po;

import java.io.Serializable;
import java.util.List;

//人员表
public class Person implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String staffCode;
	
	
	private String staffName;
	
	//年度
	private String attYear;
	
	
	
	
	private List<Attendance> attendance;   //迟到次数


	public String getStaffCode() {
		return staffCode;
	}


	public void setStaffCode(String staffCode) {
		this.staffCode = staffCode;
	}


	public String getStaffName() {
		return staffName;
	}


	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}


	public String getAttYear() {
		return attYear;
	}


	public void setAttYear(String attYear) {
		this.attYear = attYear;
	}





	public List<Attendance> getAttendance() {
		return attendance;
	}


	public void setAttendance(List<Attendance> attendance) {
		this.attendance = attendance;
	}


	@Override
	public String toString() {
		return "Person [staffCode=" + staffCode + ", staffName=" + staffName + ", attYear=" + attYear + ", attendance="
				+ attendance + "]";
	}


	
	

	
	

	
	

}
