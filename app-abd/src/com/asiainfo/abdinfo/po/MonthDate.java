package com.asiainfo.abdinfo.po;

import java.io.Serializable;

public class MonthDate implements Serializable{

	private static final long serialVersionUID = 1L;
	

	 
	 private String month;
	 
	 private String  count;



	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "MonthDate [month=" + month + ", count=" + count + "]";
	}

	 

}
