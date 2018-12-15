package com.asiainfo.abdinfo.po;

import java.io.Serializable;

/**
 * 迟到表
 * @author Administrator
 *
 */
public class Attendance implements Serializable{

	private static final long serialVersionUID = 1L;
	
	//考勤期间月
	private String arrMonth;
	//迟到次数
	private String lateNum;
	
	private String leaveNum;
	
	private String overtime;

	
	public String getArrMonth() {
		return arrMonth;
	}

	public void setArrMonth(String arrMonth) {
		this.arrMonth = arrMonth;
	}
	
	public String getLateNum() {
		return lateNum;
	}

	public void setLateNum(String lateNum) {
		this.lateNum = lateNum;
	}

	public String getLeaveNum() {
		return leaveNum;
	}

	public void setLeaveNum(String leaveNum) {
		this.leaveNum = leaveNum;
	}

	public String getOvertime() {
		return overtime;
	}

	public void setOvertime(String overtime) {
		this.overtime = overtime;
	}

	@Override
	public String toString() {
		return "Attendance [arrMonth=" + arrMonth + ", lateNum=" + lateNum + ", leaveNum=" + leaveNum + ", overtime="
				+ overtime + "]";
	}


	
	
	

	
	
	

}
