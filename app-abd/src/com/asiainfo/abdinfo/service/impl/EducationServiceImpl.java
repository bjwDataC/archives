package com.asiainfo.abdinfo.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.asiainfo.abdinfo.dao.IEducationDao;
import com.asiainfo.abdinfo.po.Education;
import com.asiainfo.abdinfo.service.IEducationService;

@Service("IEducationService")
public class EducationServiceImpl implements IEducationService{
	
	@Resource
	private IEducationDao educationDao;
	
	@Override
	public JSONArray findEducation(Map<String, Object> map) {
		List<Education> educations=educationDao.findEducation(map);
		JSONArray jsonArray=(JSONArray)JSON.toJSON(educations);
		return jsonArray;
	}

}
