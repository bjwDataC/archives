package com.asiainfo.abdinfo.dao;

import java.util.Map;
import com.asiainfo.abdinfo.po.Person;

public interface AttendanceDao {
	
	Person selectAttendance(Map map);
	
	/*查询背景*/
	Person selectBackGround(Map map);
	
}
