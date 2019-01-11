package com.asiainfo.abdinfo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.asiainfo.abdinfo.po.Administrative;
import com.asiainfo.abdinfo.po.Person;
import com.asiainfo.abdinfo.po.UserUser;

public interface AttendanceDao {
	
	/*查询考勤*/
	Person selectAttendance(Map map);
	
	/*查询背景*/
	Person selectBackGround(Map map);
	
	
	/*用于做登陆界面*/
	UserUser selectNamePwd(Map map);
	
	/*查询考勤中年份*/
	List<String> selectYear(@Param(value = "staffCode") String staffCode);
	
	
	/*用来展示行政数据*/
	List<Administrative> selectAdm(@Param(value="staffCode") String staffCode,@Param(value="year") String year);
	
	
	
	
}
