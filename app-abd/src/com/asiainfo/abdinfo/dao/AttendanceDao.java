package com.asiainfo.abdinfo.dao;

import java.util.List;
import java.util.Map;
import com.asiainfo.abdinfo.po.Person;

public interface AttendanceDao {
	Person selectAttendance(Map map);
	
}
