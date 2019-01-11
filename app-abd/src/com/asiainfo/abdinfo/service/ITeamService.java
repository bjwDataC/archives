package com.asiainfo.abdinfo.service;

import java.util.List;
import java.util.Map;

import com.asiainfo.abdinfo.po.CoachingRecord;

public interface ITeamService {
	
	List<CoachingRecord> fingTeam(String staffCode,String date);//团队参与
	
	public Map<String, Object> findCompany(String staffCode,String date);//公司知识
	
	public Map<String, Object> findManagement(String staffCode);//管理知识
	
	public Map<String, Object> findSpecializedKnowledge(String staffCode,String date);//专业知识
	
	public Map<String, Object> fingReadingFeeling(String staffCode,String date,String chapter);//查找读书心得

}
