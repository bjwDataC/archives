package com.asiainfo.abdinfo.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.alibaba.fastjson.JSONObject;
import com.asiainfo.abdinfo.po.Administrative;
import com.asiainfo.abdinfo.po.Person;
import com.asiainfo.abdinfo.po.UserUser;

public interface AttendanceService {
	
	public JSONObject getAttendan(Map map);
	
	Person getBackGround(Map map);
	
	/*登陆界面根据用户名跟密码*/
	UserUser getNamePwd(String userID,String pwd);
	
	/*查询考勤中年份*/
	List<String> getYear(String staffCode);
	
	/*用来展示行政的数据*/
	List<Administrative> getAdm(String staffCode, String year);

}
