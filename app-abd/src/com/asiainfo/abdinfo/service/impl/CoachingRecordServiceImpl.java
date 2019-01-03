package com.asiainfo.abdinfo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.asiainfo.abdinfo.dao.ICoachingRecordDao;
import com.asiainfo.abdinfo.po.CoachingRecord;
import com.asiainfo.abdinfo.service.ICoachingRecordService;

@Service("CoachingRecordServiceImpl")
public class CoachingRecordServiceImpl implements ICoachingRecordService{
	
	@Resource
	private ICoachingRecordDao coachingRecord;
	
	@Override
	public JSONArray findCoachingRecord(String staffCode,String date) {
		List<CoachingRecord> coachingRecords=coachingRecord.findCoachingRecord(staffCode,date);
		JSONArray jsonArray=(JSONArray)JSON.toJSON(coachingRecords);
		return jsonArray;
	}

}
