package com.asiainfo.abdinfo.po;

import java.io.Serializable;

/**
 * 小优
 * @author Administrator
 *
 */
public class SmallExcellent implements Serializable{

	
	private static final long serialVersionUID = 1L;
	
	private String smallDate;
	
	private String samllCount;

	public String getSmallDate() {
		return smallDate;
	}

	public void setSmallDate(String smallDate) {
		this.smallDate = smallDate;
	}

	public String getSamllCount() {
		return samllCount;
	}

	public void setSamllCount(String samllCount) {
		this.samllCount = samllCount;
	}

	@Override
	public String toString() {
		return "SmallExcellent [smallDate=" + smallDate + ", samllCount=" + samllCount + "]";
	}


	
	
	 
	

}
