package com.asiainfo.abdinfo.po;

import java.io.Serializable;

/**任职资格实体类*/
public class Qualification implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6612806542080694058L;
	private String date;//答辩时间
	private String nowPosition;//目前职称
	private String aplayForPosition;//申请职称
	private String aplayMonth;//申请职称启用月份
	private String nowStartTime;//目前职称启用时间
	private String aplayForStartTime;//申请职称启用时间
	public Qualification() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Qualification(String date, String nowPosition, String aplayForPosition, String nowStartTime,
			String aplayForStartTime) {
		super();
		this.date = date;
		this.nowPosition = nowPosition;
		this.aplayForPosition = aplayForPosition;
		this.nowStartTime = nowStartTime;
		this.aplayForStartTime = aplayForStartTime;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getNowPosition() {
		return nowPosition;
	}
	public void setNowPosition(String nowPosition) {
		this.nowPosition = nowPosition;
	}
	public String getAplayForPosition() {
		return aplayForPosition;
	}
	public void setAplayForPosition(String aplayForPosition) {
		this.aplayForPosition = aplayForPosition;
	}
	public String getNowStartTime() {
		return nowStartTime;
	}
	public void setNowStartTime(String nowStartTime) {
		this.nowStartTime = nowStartTime;
	}
	public String getAplayForStartTime() {
		return aplayForStartTime;
	}
	public void setAplayForStartTime(String aplayForStartTime) {
		this.aplayForStartTime = aplayForStartTime;
	}
	
	
}
