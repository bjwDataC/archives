package com.asiainfo.abdinfo.service;

import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSONObject;
import com.asiainfo.abdinfo.po.Contract;
import com.asiainfo.abdinfo.po.DayDate;
import com.asiainfo.abdinfo.po.DayInfo;
import com.asiainfo.abdinfo.po.MonthDate;
import com.asiainfo.abdinfo.po.Person;
import com.asiainfo.abdinfo.po.SmallExcellent;

public interface IBackGroundService {
	Person getBackGround(Map map);
	
	public List<Contract> getContract(Map map);
	
	
	/**
	 * 用来查询日数据中的信息模块
	 * @param map
	 * @return
	 */
	JSONObject  getInfo(Map map);
	
	
	/**
	 * 小优
	 * @param map
	 * @return
	 */
	public JSONObject getSmallExcellent(Map map);
	
	
	/**
	 * 月数据
	 * @param map
	 * @return
	 */
	List<MonthDate> getMonth(Map map);
	
	
	/**
	 * 月数据查询类型
	 * @param map
	 * @return
	 */
	List<String> getType(Map map);
}








