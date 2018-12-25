package com.asiainfo.abdinfo.service;



import java.util.Map;

import com.alibaba.fastjson.JSONArray;



public interface IPortipolioService {
	
	//查找在公司的年份
	public JSONArray findYear(Map<String, Object> map);
	//查找小红花信息
	public JSONArray findRedFlower(Map<String, Object> map);
	//单项奖积分信息
	public JSONArray findPortipolio(Map<String, Object> map);
	
	//单项奖个数信息
	public JSONArray findPortipolioNum(Map<String, Object> map);
	//查找优质服务信息
	public JSONArray findFirstService(Map<String, Object> map);
	
	//查找优质服务金额信息
	public JSONArray findFirstServiceMoney(Map<String, Object> map);
	//查找小优数量
	public JSONArray findSmallQualityService(Map<String, Object> map);

}
