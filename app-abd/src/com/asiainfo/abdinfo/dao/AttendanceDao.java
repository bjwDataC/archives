package com.asiainfo.abdinfo.dao;

import java.util.Map;
import com.asiainfo.abdinfo.po.Person;
import com.asiainfo.abdinfo.po.UserUser;

public interface AttendanceDao {
	
	Person selectAttendance(Map map);
	
	/*查询背景*/
	Person selectBackGround(Map map);
	
	
	/*用于做登陆界面*/
	UserUser selectNamePwd(Map map);
	
	
	
}
