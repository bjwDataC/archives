package com.asiainfo.abdinfo.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.asiainfo.abdinfo.dao.ITeamDao;
import com.asiainfo.abdinfo.po.CoachingRecord;
import com.asiainfo.abdinfo.po.Management;
import com.asiainfo.abdinfo.po.Qualification;
import com.asiainfo.abdinfo.service.ITeamService;

@Service(value="ITeamServiceImpl")
public class ITeamServiceImpl implements ITeamService{
	
	@Resource
	private ITeamDao teamDao;
	
	//团队参与
	@Override
	public List<CoachingRecord> fingTeam(String staffCode) {
		
		return teamDao.fingTeam(staffCode);
	}
	//公司公共课、读书心得和新员工入职培训
	@Override
	public Map<String, Object> findCompany(String staffCode) {
		Map<String, Object> map=new HashMap<String,Object>();
		List<CoachingRecord> companyList=teamDao.fingCompanyKnowledge(staffCode);
		List<CoachingRecord> inductionTrainingList=teamDao.fingInductionTraining(staffCode);
		List<CoachingRecord> readingFeelingList=teamDao.fingReadingFeeling(staffCode);
		map.put("readingFeelingList", readingFeelingList);
		map.put("companyList", companyList);
		map.put("inductionTrainingList", inductionTrainingList);
		return map;
	}
	/**管理知识*/
	@Override
	public Map<String, Object> findManagement(String staffCode) {
		Map<String, Object> map=new HashMap<String,Object>();
		List<Management> management=teamDao.fingManagementReservePool(staffCode);
		List<Qualification> qualification=teamDao.findQualification(staffCode);
		map.put("management", management);
		map.put("qualification", qualification);
		return map;
	}
	/**专业知识*/
	@Override
	public Map<String, Object> findSpecializedKnowledge(String staffCode) {
		// TODO Auto-generated method stub
		return null;
	}
	

}







