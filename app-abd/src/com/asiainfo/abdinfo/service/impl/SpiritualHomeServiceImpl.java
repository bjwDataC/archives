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
	
	@Override
	public Map<String, Object> findSpiritualHome(String staffCode) {
		List<CoachingRecord> daySummarize=SpiritualHome.findDaySummarize(staffCode);
		List<CoachingRecord> monthSummarize=SpiritualHome.findMonthSummarize(staffCode);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("daySummarize", daySummarize);
		map.put("monthSummarize", monthSummarize);
		return map;
	}

}
