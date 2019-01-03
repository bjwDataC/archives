package com.asiainfo.abdinfo.controller.coursegrowth;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.asiainfo.abdinfo.common.JsonUtils;
import com.asiainfo.abdinfo.common.ResponseUtils;
import com.asiainfo.abdinfo.po.CoachingRecord;
import com.asiainfo.abdinfo.service.ITeamService;

/**团队参与控制器*/
@Controller
public class TeamController {
	
	@Resource
	private ITeamService teamService;
	
	@RequestMapping(value="/team.do")
	public String findTeam(HttpServletRequest request){
		return "team";
	}
	
	@RequestMapping(value="/teamData.do")
	@ResponseBody
	public void findTeamData(String staffCode,String date,HttpServletResponse response){
		List<CoachingRecord> list=teamService.fingTeam(staffCode,date);
		ResponseUtils.renderJson(response, JsonUtils.toJson(list));
	}
	
}
