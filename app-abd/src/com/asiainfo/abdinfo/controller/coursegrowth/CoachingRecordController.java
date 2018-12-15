package com.asiainfo.abdinfo.controller.coursegrowth;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.asiainfo.abdinfo.service.ICoachingRecordService;

@Controller
public class CoachingRecordController {
	@Resource
	private ICoachingRecordService coachingRecordService;
	
	@RequestMapping(value="coachingRecord.do")
	@ResponseBody
	public JSONArray findCoachingRecord(HttpServletRequest request){
		
		String staffCode=request.getParameter("staffCode");
		JSONArray jsonArray=coachingRecordService.findCoachingRecord(staffCode);
		return jsonArray;
		
	}
}
