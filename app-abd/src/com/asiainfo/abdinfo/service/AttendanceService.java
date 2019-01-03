package com.asiainfo.abdinfo.service;

import java.util.Map;

import com.alibaba.fastjson.JSONObject;
import com.asiainfo.abdinfo.po.Person;
import com.asiainfo.abdinfo.po.UserUser;

public interface AttendanceService {
	
	public JSONObject getAttendan(Map map);
	
	Person getBackGround(Map map);
	
	/*登陆界面根据用户名跟密码*/
	UserUser getNamePwd(String userID,String pwd);

}
