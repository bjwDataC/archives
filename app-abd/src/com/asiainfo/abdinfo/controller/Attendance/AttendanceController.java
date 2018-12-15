package com.asiainfo.abdinfo.controller.Attendance;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.asiainfo.abdinfo.service.AttendanceService;

@Controller
public class AttendanceController {
	
	@Autowired
	private AttendanceService attendanceService;
	
	@RequestMapping(value="/Attendance.do")
	@ResponseBody
	public Map<String, Object> index(HttpServletRequest request,HttpServletResponse response){
		response.setContentType("application/json;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		String staffCode=(String)request.getParameter("staffCode");
		Map<String,Object> map=new HashMap<>();
		map.put("staffCode", staffCode);
		JSONObject ojb=attendanceService.getAttendan(map);
		return ojb;
	}
	
	

}
