package com.asiainfo.abdinfo.service;

import java.util.Map;

import com.alibaba.fastjson.JSONObject;
import com.asiainfo.abdinfo.po.Person;

public interface AttendanceService {
	
	public JSONObject getAttendan(Map map);
	
	Person getBackGround(Map map);

}
