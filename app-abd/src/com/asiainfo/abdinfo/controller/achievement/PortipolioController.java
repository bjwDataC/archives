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
import com.asiainfo.abdinfo.service.IPortipolioService;

/** 荣誉成就小红花等信息的控制器的控制器 */
@Controller
public class PortipolioController {
	@Resource
	private IPortipolioService portipolioService;

	@RequestMapping(value = "/portipolio.do")
	public ModelAndView index(HttpServletRequest request) {

		String staffCode = request.getParameter("staffCode");
		Map map = new HashMap();
		map.put("staffCode", "18060404");
		JSONArray years = portipolioService.findYear(map);
		JSONArray redFlower = portipolioService.findRedFlower(map);
		map.put("years", years);
		map.put("redFlower", redFlower);
		return new ModelAndView("portipolio", map);
	}

	@RequestMapping(value = "/portipolioJson.do")
	@ResponseBody
	public Map portipolio(HttpServletRequest request) {

		String staffCode = request.getParameter("staffCode");
		String leiXing = request.getParameter("type");
		Map map = new HashMap();
		JSONArray portipolio = new JSONArray();
		map.put("staffCode", "18060404");
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
