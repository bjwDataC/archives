package com.asiainfo.abdinfo.utils;

public class SplitDate {

	public static String splitDate(String date){
		
		 
	   date = date.replace("-","").substring(0,6);
	   return date;
	}
}
