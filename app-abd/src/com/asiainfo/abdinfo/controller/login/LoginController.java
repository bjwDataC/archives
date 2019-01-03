package com.asiainfo.abdinfo.controller.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.apache.commons.lang3.StringUtils;

import com.asiainfo.abdinfo.common.ErrorCode;
import com.asiainfo.abdinfo.common.ReturnResult;
import com.asiainfo.abdinfo.po.UserUser;
import com.asiainfo.abdinfo.service.AttendanceService;
import com.asiainfo.biframe.utils.string.DES;

@Controller
public class LoginController {
	
	@Autowired
	private AttendanceService attendanceService;
	
	@RequestMapping(value="/loginUI.do")
	@ResponseBody
	public ModelAndView loginPage(HttpServletRequest request,HttpServletResponse response){
		return new ModelAndView("/login");
	}
	

	@ResponseBody
	@RequestMapping(value="/login")
	public String login(String userId,String pwd, HttpServletRequest request,HttpServletResponse resp, HttpSession session) throws Exception{
		UserUser user = null;
		if(!StringUtils.isEmpty(userId) && !StringUtils.isEmpty(pwd)){
			user = attendanceService.getNamePwd(userId, pwd);//DES.encrypt(pwd)
			if(user != null){
				session.setAttribute("userUser", user);
				return ReturnResult.successJson(null);
			}else{
				return ReturnResult.failJson(ErrorCode.NO_AUTH);
			}
		}else{
			return ReturnResult.failJson(ErrorCode.PARAM_EMPTY);
		}
	}
	
	

}
