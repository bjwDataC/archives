package com.asiainfo.abdinfo.controller.index;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	
	@RequestMapping(value="/indexController.do")
	public String index(){
		return "index";
	}
	
	/*背景的页面*/
	@RequestMapping(value="/backGroupIndex.do")
	@ResponseBody
	public ModelAndView backGroupPage(HttpServletRequest request,HttpServletResponse response){
		return new ModelAndView("/basicInfo/background");
	}
	
	@RequestMapping(value="/admContract.do")
	@ResponseBody
	public ModelAndView admContract(HttpServletRequest request,HttpServletResponse response){
		return new ModelAndView("/basicInfo/admContract");	
	}
	
	
	@RequestMapping(value="/baseData.do")
	@ResponseBody
	public ModelAndView baseData(HttpServletRequest request,HttpServletResponse response){
		return new ModelAndView("/basisData/basisData");
	}
}
