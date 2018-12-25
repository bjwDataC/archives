package com.asiainfo.abdinfo.controller.spiritualhome;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.asiainfo.abdinfo.service.ISpiritualHomeService;
/**心灵家园的控制器*/
@Controller
public class SpiritualHome {
	
	@RequestMapping(value="/app-event-calender.do")
	public ModelAndView service(){
		return new ModelAndView("restaurant-menu-one");
	}
	
	@Resource
	private ISpiritualHomeService spiritualHomes;
	
	@RequestMapping(value="/spiritualHome.do")
	@ResponseBody
	public Map<String, Object> serviceDate(HttpServletRequest request){
		String staffCode=request.getParameter("staffCode");
		Map<String, Object> map = spiritualHomes.findSpiritualHome(staffCode);
		return map;
	}
}
