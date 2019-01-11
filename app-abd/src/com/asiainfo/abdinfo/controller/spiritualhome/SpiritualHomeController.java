package com.asiainfo.abdinfo.controller.spiritualhome;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.asiainfo.abdinfo.po.UserUser;
import com.asiainfo.abdinfo.service.ISpiritualHomeService;
/**心灵家园的控制器*/
@Controller
public class SpiritualHomeController {
	
	@RequestMapping(value="/app-event-calender.do")
	public ModelAndView service(){
		return new ModelAndView("restaurant-menu-one");
	}
	
	@Resource
	private ISpiritualHomeService spiritualHomes;
	
	@RequestMapping(value="/spiritualHome.do")
	@ResponseBody
	public Map<String, Object> serviceDate(HttpServletRequest request,HttpSession session){
		String date=request.getParameter("date");
		UserUser userUser=(UserUser)session.getAttribute("userUser");
		String staffCode = userUser.getStaffCode();
		String stutas=request.getParameter("stutas");
		Map<String, Object> map=new HashMap<String,Object>();
		if (stutas.equals("1")) {
			map = spiritualHomes.findDaySummarize(staffCode,date);
		}else if (stutas.equals("2")) {
			map = spiritualHomes.findMonthSummarize(staffCode, date);
		}else {
			map = spiritualHomes.findManagerEvaluation(staffCode, date);
		}
		return map;
	}
}
