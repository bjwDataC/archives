package com.asiainfo.abdinfo.po;

import java.io.Serializable;

/**
 * 行政数据
 * @author Administrator
 *
 */
public class Administrative implements Serializable{

	private static final long serialVersionUID = 1L;
	
	//年,
	private String year;
	
	//月,
	private String month;
	
	//类别,
	private String type;
	
	//分数,
	private String score;

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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "Administrative [year=" + year + ", month=" + month + ", type=" + type + ", score=" + score + "]";
	}
	
	

}




