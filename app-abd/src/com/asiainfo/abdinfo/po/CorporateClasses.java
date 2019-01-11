package com.asiainfo.abdinfo.po;

import java.io.Serializable;

public class CorporateClasses implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -677186555935740108L;
	private String level;//
	private String courseTitle;//课程名称
	private String scope;//考试成绩
	private String time;//考试日期 
	public CorporateClasses() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CorporateClasses(String level, String courseTitle, String scope, String time) {
		super();
		this.level = level;
		this.courseTitle = courseTitle;
		this.scope = scope;
		this.time = time;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getCourseTitle() {
		return courseTitle;
	}
	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}
	public String getScope() {
		return scope;
	}
	public void setScope(String scope) {
		this.scope = scope;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
}
