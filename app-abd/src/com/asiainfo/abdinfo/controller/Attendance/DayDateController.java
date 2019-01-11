package com.asiainfo.abdinfo.controller.Attendance;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONObject;
import com.asiainfo.abdinfo.po.MonthDate;
import com.asiainfo.abdinfo.po.SmallExcellent;
import com.asiainfo.abdinfo.po.UserUser;
import com.asiainfo.abdinfo.po.Workload;
import com.asiainfo.abdinfo.service.IBackGroundService;

@Controller
@RequestMapping(value="date")
public class DayDateController {
	
	@Autowired
	private IBackGroundService  iBackGroundService;
	
	/**
	 * 信息
	 * @param request
	 * @return
	 */
	@RequestMapping(value="Info.do")
	@ResponseBody
	public JSONObject findInfo(HttpServletRequest request,HttpSession session){
		UserUser u=(UserUser)session.getAttribute("userUser");
		String beginData= request.getParameter("beginData");
		String endData=request.getParameter("endData");
		Map<String,String> map=new HashMap<String,String>();
		map.put("staffCode", u.getStaffCode());
		map.put("beginData", beginData);
		map.put("endData", endData);
		return iBackGroundService.getInfo(map);
	}
	
	
	/**
	 * 日数据：小优
	 * @param request
	 * @return
	 */
	@RequestMapping(value="smallEx.do")
	@ResponseBody
	public  JSONObject findsmallExcellent(HttpServletRequest request,HttpSession session){
		UserUser u=(UserUser)session.getAttribute("userUser");
		String beginData= request.getParameter("beginData");
		String endData=request.getParameter("endData");
		Map<String,String> map=new HashMap<String,String>();
		map.put("staffCode", u.getStaffCode());
		map.put("beginData", beginData);
		map.put("endData", endData);
		JSONObject t =iBackGroundService.getSmallExcellent(map);
		return t;
	}
	
	
	
	/**
	 * 工作量
	 * @param request
	 * @return
	 */
	@RequestMapping(value="workLoad.do")
	@ResponseBody
	public  JSONObject findWorkload(HttpServletRequest request,HttpSession session){
		UserUser u=(UserUser)session.getAttribute("userUser");
		String beginData= request.getParameter("beginData");
		String endData=request.getParameter("endData");
		Map<String,String> map=new HashMap<String,String>();
		map.put("staffCode", u.getStaffCode());
		map.put("beginData", beginData);
		map.put("endData", endData);
		JSONObject t =iBackGroundService.getWorkload(map);
		return t;
	}
	
	
	
	
	
	/**
	 * 用于填写月数据
	 * @param request
	 * @return
	 */
	@RequestMapping(value="monthDate.do")
	@ResponseBody
	public  List<MonthDate> findsmonthDate(HttpServletRequest request,HttpSession session){
		UserUser u=(UserUser)session.getAttribute("userUser");
		String beginMonth= request.getParameter("beginMonth");
		System.out.println(beginMonth+"-01");
		String endMonth=request.getParameter("endMonth");
		System.out.println(endMonth+"-01");
		String staType=request.getParameter("staType");
		Map<String,String> map=new HashMap<String,String>();
		map.put("staffCode", u.getStaffCode());
		map.put("beginMonth", beginMonth+"-01");
		map.put("endMonth", endMonth+"-01");
		map.put("staType", staType);
		List<MonthDate> t= iBackGroundService.getMonth(map);
		return t;
	}
	
	
	
	/*
	 * 月数据查询类型
	 */
	@RequestMapping(value="monthType.do")
	@ResponseBody
	public  List<String> findsmonthType(HttpServletRequest request,HttpSession session){
		UserUser u=(UserUser)session.getAttribute("userUser");
		String beginMonth= request.getParameter("beginMonth");
		String endMonth=request.getParameter("endMonth");
		System.out.println(beginMonth+"-01");
		System.out.println(endMonth+"-01");
		Map<String,String> map=new HashMap<String,String>();
		map.put("staffCode", u.getStaffCode());
		map.put("beginMonth", beginMonth+"-01");
		map.put("endMonth", endMonth+"-01");
		return iBackGroundService.getType(map);
	}
}





