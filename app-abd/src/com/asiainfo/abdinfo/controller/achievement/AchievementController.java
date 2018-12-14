package com.asiainfo.abdinfo.controller.achievement;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.asiainfo.abdinfo.service.IEducationService;
@Controller
public class AchievementController {
	
	@Resource
	private IEducationService educationService;
	
	@RequestMapping(value="/education.do")
	@ResponseBody
	public Map<String, Object> index(HttpServletRequest request,HttpServletResponse response){
		response.setContentType("application/json;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		String staffCode=(String)request.getParameter("staffCode");
		Map<String,Object> map=new HashMap<>();
		map.put("staffCode", staffCode);
		JSONArray list=educationService.findEducation(map);
		map.put("list", list);
		return map;
	}

}
