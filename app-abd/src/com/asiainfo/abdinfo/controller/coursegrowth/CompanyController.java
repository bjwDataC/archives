package com.asiainfo.abdinfo.controller.coursegrowth;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.asiainfo.abdinfo.common.JsonUtils;
import com.asiainfo.abdinfo.common.ResponseUtils;
import com.asiainfo.abdinfo.po.UserUser;
import com.asiainfo.abdinfo.service.ITeamService;

/**公司知识的控制器*/
@Controller
public class CompanyController {
	
	@Resource
	private ITeamService teamService;
	//返回视图
	@RequestMapping(value="/companyKnowledge.do")
	public String service(){
		return "companyKnowledge";
	}
	//公司知识
	@RequestMapping(value="/companyData.do")
	@ResponseBody
	public void getCompanyData(String chapter,HttpSession session,String stutas,String date,HttpServletResponse response){
		UserUser userUser=(UserUser)session.getAttribute("userUser");
		String staffCode = userUser.getStaffCode();
		Map<String, Object> map=new HashMap<String, Object>();
		if (stutas.equals("1")) {
			map=teamService.findCompany(staffCode,date);//公司知识
		}else if(stutas.equals("2")){
			map=teamService.findManagement(staffCode);//管理知识
		}else {
			map=teamService.fingReadingFeeling(staffCode,date,chapter);//读书心得
		}
		ResponseUtils.renderJson(response, JsonUtils.toJson(map));
	}
	
	/*//管理知识
	@RequestMapping(value="/management.do")
	@ResponseBody
	public void getManagement(String staffCode,String stutas,HttpServletResponse response){
		Map<String, Object> map=new HashMap<String, Object>();
		map=teamService.findManagement(staffCode);
		ResponseUtils.renderJson(response, JsonUtils.toJson(map));
	}
	
	//专业知识
	@RequestMapping(value="/specializedKnowledge.do")
	@ResponseBody
	public void getSpecializedKnowledge(String staffCode,String stutas,HttpServletResponse response){
		Map<String, Object> map=new HashMap<String, Object>();
		map=teamService.findCompany(staffCode);
		ResponseUtils.renderJson(response, JsonUtils.toJson(map));
	}*/
}
