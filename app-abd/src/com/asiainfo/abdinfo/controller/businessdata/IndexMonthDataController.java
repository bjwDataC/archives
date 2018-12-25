package com.asiainfo.abdinfo.controller.businessdata;
/**首页经营数据部分中月数据和多维度的控制器*/
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.asiainfo.abdinfo.common.JsonUtils;
import com.asiainfo.abdinfo.common.ResponseUtils;
import com.asiainfo.abdinfo.po.IndexMonthData;
import com.asiainfo.abdinfo.service.IIndexMonthDataService;

@Controller
public class IndexMonthDataController {

	@Resource
	private IIndexMonthDataService iIndexMonthDataService;
	
	@RequestMapping(value="/monthData.do")
	@ResponseBody
	public void findMonthData(HttpServletRequest request,HttpServletResponse response){
		response.setContentType("application/json;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		String staffCode=request.getParameter("staffCode");
		String datestr=request.getParameter("date");
		String year=datestr.substring(0,4);
		String month=datestr.substring(5,7);
		int monthInt=Integer.parseInt(month);
		int yearInt=Integer.parseInt(year);
		String dateBefore;
		if (monthInt==1) {
			dateBefore=(yearInt-1)+"-01-01";
		}else {
			if (monthInt<=10) {
				dateBefore=datestr.substring(0,5)+"0"+(monthInt-1)+"-01";
			}else{
				dateBefore=datestr.substring(0,5)+(monthInt-1)+"-01";
			}
			
		}
		String date=datestr.substring(0,7)+"-01";
		Map<String,Object> map =new HashMap<String,Object>();
		map.put("staffCode", staffCode);
		map.put("date", date);
		List<List<IndexMonthData>> list=new ArrayList<List<IndexMonthData>>();
		list.add(iIndexMonthDataService.fiIndexMonthDatas(map));
		map.put("date", dateBefore);
		list.add(iIndexMonthDataService.fiIndexMonthDatas(map));
		ResponseUtils.renderJson(response, JsonUtils.toJson(list));
	}
}
