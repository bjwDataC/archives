package com.asiainfo.abdinfo.controller.achievement;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.alibaba.fastjson.JSONArray;
import com.asiainfo.abdinfo.po.UserUser;
import com.asiainfo.abdinfo.service.IPortipolioService;

/** 荣誉成就小红花等信息的控制器的控制器 */
@Controller
public class PortipolioController {
	@Resource
	private IPortipolioService portipolioService;

	@RequestMapping(value = "/portipolio.do")
	public ModelAndView index(HttpServletRequest request,HttpSession session) {
		UserUser userUser=(UserUser)session.getAttribute("userUser");
		String staffCode = userUser.getStaffCode();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("staffCode", staffCode);
		JSONArray years = portipolioService.findYear(map);
		JSONArray redFlower = portipolioService.findRedFlower(map);
		map.put("years", years);
		map.put("redFlower", redFlower);
		return new ModelAndView("portipolio", map);
	}

	@RequestMapping(value = "/portipolioJson.do")
	@ResponseBody
	public Map<String,Object> portipolio(HttpServletRequest request,HttpSession session) {

		UserUser userUser=(UserUser)session.getAttribute("userUser");
		String staffCode = userUser.getStaffCode();
		String leiXing = request.getParameter("type");
		Map<String,Object> map = new HashMap<String,Object>();
		JSONArray portipolio = new JSONArray();
		map.put("staffCode", staffCode);
		JSONArray years = portipolioService.findYear(map);
		if (leiXing.equals("0")) {
			portipolio = portipolioService.findRedFlower(map);
		} else if (leiXing.equals("1")) {
			portipolio = portipolioService.findPortipolioNum(map);
		} else if (leiXing.equals("2")) {
			portipolio = portipolioService.findPortipolio(map);
		} else if (leiXing.equals("3")) {
			portipolio = portipolioService.findFirstService(map);
		} else if (leiXing.equals("4")) {
			portipolio = portipolioService.findFirstServiceMoney(map);
		} else if (leiXing.equals("5")) {
			portipolio = portipolioService.findSmallQualityService(map);
		}

		map.put("portipolio1", portipolio);
		map.put("years", years);
		return map;
	}

}
