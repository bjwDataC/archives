package com.asiainfo.abdinfo.controller.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping(value="/indexController.do")
	public String index(){
		return "index";
	}
}
