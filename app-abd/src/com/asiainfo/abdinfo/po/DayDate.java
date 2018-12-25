package com.asiainfo.abdinfo.po;

import java.io.Serializable;
import java.util.List;

public class DayDate implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	List<SmallExcellent> smallExcellent;

	public List<SmallExcellent> getSmallExcellent() {
		return smallExcellent;
	}

	public void setSmallExcellent(List<SmallExcellent> smallExcellent) {
		this.smallExcellent = smallExcellent;
	}

	@Override
	public String toString() {
		return "DayDate [smallExcellent=" + smallExcellent + "]";
	}
	
	

}
