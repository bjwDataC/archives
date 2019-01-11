package com.asiainfo.abdinfo.controller.Attendance;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.asiainfo.abdinfo.po.Administrative;
import com.asiainfo.abdinfo.po.Contract;
import com.asiainfo.abdinfo.po.Person;
import com.asiainfo.abdinfo.service.AttendanceService;
import com.asiainfo.abdinfo.service.IBackGroundService;
import com.asiainfo.abdinfo.po.UserUser;

@Controller
@RequestMapping(value="/basicInfo")
public class AttendanceController {
	
	@Autowired
	private AttendanceService attendanceService;
	
	@Autowired
	private IBackGroundService iBackGroundService;
	
	@RequestMapping(value="/Attendance.do")
	@ResponseBody
	public Map<String, Object> index(HttpServletRequest request,HttpServletResponse response,HttpSession session){
		response.setContentType("application/json;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		UserUser u=(UserUser)session.getAttribute("userUser");
		String year= request.getParameter("year");
		Map<String,Object> map=new HashMap<>();
		map.put("staffCode", u.getStaffCode());
		map.put("year", year);
		JSONObject ojb=attendanceService.getAttendan(map);
		return ojb;
	}
	
	
	
	
	/*背景信息的数据*/
	@RequestMapping(value="/backGroup.do")
	@ResponseBody
	public Person backGroup(HttpServletRequest request,HttpServletResponse response,HttpSession session){
		response.setContentType("application/json;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		UserUser u=(UserUser)session.getAttribute("userUser");
		Map<String,Object> map=new HashMap<>();
		map.put("staffCode", u.getStaffCode());
		Person person=iBackGroundService.getBackGround(map);
		return person;
	}
	
	/*添加合同*/
	@RequestMapping(value="/contract.do")
	@ResponseBody
	public List<Contract> contract(HttpServletRequest request,HttpServletResponse response,HttpSession session){
		response.setContentType("application/json;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		UserUser u=(UserUser)session.getAttribute("userUser");
		Map<String,Object> map=new HashMap<>();
		map.put("staffCode", u.getStaffCode());
		List<Contract> con=iBackGroundService.getContract(map);
		return con;
	}
	
	
	/*添加合同*/
	@RequestMapping(value="/attYear.do")
	@ResponseBody
	public List<String> getYear(HttpServletRequest request,HttpServletResponse response, HttpSession session){
		response.setContentType("application/json;charset=utf-8");
		response.setCharacterEncoding("utf-8");	
		UserUser u=(UserUser)session.getAttribute("userUser");
		List<String> con=attendanceService.getYear(u.getStaffCode());
		return con;
	}
	
	
	/*用来展示行政数据*/
	@RequestMapping(value="/adm.do")
	@ResponseBody
	public List<Administrative> adm(HttpServletRequest request,HttpServletResponse response, HttpSession session){
//		response.setContentType("application/json;charset=utf-8");
//		response.setCharacterEncoding("utf-8");	
		UserUser u=(UserUser)session.getAttribute("userUser");
		String year=request.getParameter("year");
		return attendanceService.getAdm(u.getStaffCode(), year);
	}
	

	

}




