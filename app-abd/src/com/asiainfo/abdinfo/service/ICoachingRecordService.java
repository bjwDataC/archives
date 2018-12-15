package com.asiainfo.abdinfo.service;

import com.alibaba.fastjson.JSONArray;
/**辅导记录service层接口*/
public interface ICoachingRecordService {
	
	public JSONArray findCoachingRecord(String staffCode);
}
