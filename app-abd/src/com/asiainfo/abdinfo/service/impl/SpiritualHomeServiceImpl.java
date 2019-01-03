package com.asiainfo.abdinfo.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.asiainfo.abdinfo.dao.ISpiritualHomeDao;
import com.asiainfo.abdinfo.po.CoachingRecord;
import com.asiainfo.abdinfo.service.ISpiritualHomeService;

@Service("SpiritualHomeServiceImpl")
public class SpiritualHomeServiceImpl implements ISpiritualHomeService{
	
	@Resource
	private ISpiritualHomeDao SpiritualHome;
	
	//日总结
	@Override
	public Map<String, Object> findDaySummarize(String staffCode,String date) {
		String time=date.substring(0,7);
		List<CoachingRecord> daySummarize=SpiritualHome.findDaySummarize(staffCode,time);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("daySummarize", daySummarize);
		return map;
	}
	//月总结
	@Override
	public Map<String, Object> findMonthSummarize(String staffCode,String date) {
		List<CoachingRecord> monthSummarize=SpiritualHome.findMonthSummarize(staffCode,date);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("monthSummarize", monthSummarize);
		return map;
	}
	//经理评价
	@Override
	public Map<String, Object> findManagerEvaluation(String staffCode,String date) {
		String year=date.substring(0,4);
		List<CoachingRecord> managerEvaluation=SpiritualHome.findManagerEvaluation(staffCode, year);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("managerEvaluation", managerEvaluation);
		return map;
	}

}
