package com.asiainfo.abdinfo.controller.coursegrowth;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.asiainfo.abdinfo.service.ICoachingRecordService;
/**首页辅导记录控制器*/
@Controller
public class CoachingRecordController {
	@Resource
	private ICoachingRecordService coachingRecordService;
	
	@RequestMapping(value="/coachingRecord-v.do")
	public String service(HttpServletRequest request){
		return "coachingRecord";
		
	}
	
	@RequestMapping(value="/coachingRecord.do")
	@ResponseBody
	public JSONArray findCoachingRecord(String date,String staffCode){
		JSONArray jsonArray=coachingRecordService.findCoachingRecord(staffCode,date);
		return jsonArray;
		
	}
}
