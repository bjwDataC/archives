package com.asiainfo.abdinfo.common;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class CurrentTime {

	/**
	 * 获取当前系统时间
	 * 
	 * @return
	 */
	public static String getCurrentTime() {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		return df.format(new Date());
	}

	static String getTime(int dataTime) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();
		// 过去一月
		c.setTime(new Date());
		c.add(Calendar.DAY_OF_WEEK, dataTime);
		Date m = c.getTime();
		String mon = format.format(m);
		return mon;
	}

	/**
	 * 七天前的日期
	 * @return
	 */
	public static String getBeforeTime() {
		return getTime(-7);
	}
	
	/**
	 * 七天后的日期
	 * @return
	 */
	public static String getAfterTime(){
		return getTime(7);	
	}
	
	

}






