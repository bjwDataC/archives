package com.asiainfo.abdinfo.po;

import java.io.Serializable;

public class Workload implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String dateTime;
	
	private String sysVisit;
	
	private String visitNumber;
	
	//ISNULL(cc.通话时长, 0) timeLength, 
	private String timeLength;
    //ISNULL(dd.次数, 0) numCount
	
	private String numCount;
	
	public String getTimeLength() {
		return timeLength;
	}

	public void setTimeLength(String timeLength) {
		this.timeLength = timeLength;
	}

	public String getNumCount() {
		return numCount;
	}

	public void setNumCount(String numCount) {
		this.numCount = numCount;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public String getSysVisit() {
		return sysVisit;
	}

	public void setSysVisit(String sysVisit) {
		this.sysVisit = sysVisit;
	}

	public String getVisitNumber() {
		return visitNumber;
	}

	public void setVisitNumber(String visitNumber) {
		this.visitNumber = visitNumber;
	}

	@Override
	public String toString() {
		return "Workload [dateTime=" + dateTime + ", sysVisit=" + sysVisit + ", visitNumber=" + visitNumber
				+ ", timeLength=" + timeLength + ", numCount=" + numCount + "]";
	}
	

}
