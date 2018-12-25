package com.asiainfo.abdinfo.controller.Attendance;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONObject;
import com.asiainfo.abdinfo.po.DayDate;
import com.asiainfo.abdinfo.po.SmallExcellent;
import com.asiainfo.abdinfo.service.IBackGroundService;

@Controller
@RequestMapping(value="date")
public class DayDateController {
	
	@Autowired
	private IBackGroundService  iBackGroundService;
	
	@RequestMapping(value="Info.do")
	@ResponseBody
	public JSONObject findInfo(HttpServletRequest request){
		String staffCode="16040801";
		String beginData= request.getParameter("beginData");
		String endData=request.getParameter("endData");
		Map<String,String> map=new HashMap<String,String>();
		map.put("staffCode", staffCode);
		map.put("beginData", beginData);
		map.put("endData", endData);
		return iBackGroundService.getInfo(map);
	}
	
	
	@RequestMapping(value="smallEx.do")
	@ResponseBody
	public  List<SmallExcellent> findsmallExcellent(HttpServletRequest request){
		String staffCode="16040801";
		String beginData= request.getParameter("beginData");
		String endData=request.getParameter("endData");
		Map<String,String> map=new HashMap<String,String>();
		map.put("staffCode", staffCode);
		map.put("beginData", beginData);
		map.put("endData", endData);
		List<SmallExcellent> t =iBackGroundService.getSmallExcellent(map);
		return t;
	}
}



