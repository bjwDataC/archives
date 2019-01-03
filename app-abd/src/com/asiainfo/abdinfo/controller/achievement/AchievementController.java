package com.asiainfo.abdinfo.controller.achievement;

/**荣誉成就里程碑的控制器*/
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONArray;
import com.asiainfo.abdinfo.service.IEducationService;

@Controller
public class AchievementController {

	@Resource
	private IEducationService educationService;

	@RequestMapping(value = "/education.do")
	@ResponseBody
	public Map<String, Object> index(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("application/json;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		String staffCode = request.getParameter("staffCode");
		String date = request.getParameter("date");
		Map<String, Object> map = new HashMap<>();
		map.put("staffCode", staffCode);
		map.put("date", date);
		JSONArray list = educationService.findEducation(map);
		map.put("list", list);
		return map;
	}

}
