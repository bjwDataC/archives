package com.asiainfo.abdinfo.po;

import java.io.Serializable;

/**管理知识实体类*/
public class Management implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8356835611853144887L;
	private String year;//年
	private String classGrade;//班级
	private String periods;//期数
	private String score;//分数
	private String ranking;//排名
	public Management() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Management(String year, String classGrade, String periods, String score, String ranking) {
		super();
		this.year = year;
		this.classGrade = classGrade;
		this.periods = periods;
		this.score = score;
		this.ranking = ranking;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getClassGrade() {
		return classGrade;
	}
	public void setClassGrade(String classGrade) {
		this.classGrade = classGrade;
	}
	public String getPeriods() {
		return periods;
	}
	public void setPeriods(String periods) {
		this.periods = periods;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getRanking() {
		return ranking;
	}
	public void setRanking(String ranking) {
		this.ranking = ranking;
	}
	
}
