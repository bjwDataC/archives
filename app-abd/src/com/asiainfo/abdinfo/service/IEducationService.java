package com.asiainfo.abdinfo.service;

import java.util.Map;

import com.alibaba.fastjson.JSONArray;
/*里程碑*/
public interface IEducationService {
	
	public JSONArray findEducation(Map<String, Object> map);
}
