package com.asiainfo.abdinfo.controller.Attendance;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.asiainfo.abdinfo.po.Contract;
import com.asiainfo.abdinfo.po.Person;
import com.asiainfo.abdinfo.service.AttendanceService;
import com.asiainfo.abdinfo.service.IBackGroundService;

@Controller
@RequestMapping(value="/basicInfo")
public class AttendanceController {
	
	@Autowired
	private AttendanceService attendanceService;
	
	@Autowired
	private IBackGroundService iBackGroundService;
	
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
	
	
	
	
	/*背景信息的数据*/
	@RequestMapping(value="/backGroup.do")
	@ResponseBody
	public Person backGroup(HttpServletRequest request,HttpServletResponse response){
		response.setContentType("application/json;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		String staffCode="15110204";
		Map<String,Object> map=new HashMap<>();
		map.put("staffCode", staffCode);
		Person person=iBackGroundService.getBackGround(map);
		return person;
	}
	
	/*添加合同*/
	@RequestMapping(value="/contract.do")
	@ResponseBody
	public List<Contract> contract(HttpServletRequest request,HttpServletResponse response){
		response.setContentType("application/json;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		String staffCode="15110204";
		Map<String,Object> map=new HashMap<>();
		map.put("staffCode", staffCode);
		List<Contract> con=iBackGroundService.getContract(map);
		return con;
	}
	
	

}
