package com.asiainfo.abdinfo.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.asiainfo.abdinfo.dao.IIndexMonthDataDao;
import com.asiainfo.abdinfo.po.IndexMonthData;
import com.asiainfo.abdinfo.service.IIndexMonthDataService;

@Service
public class IndexMonthDataServiceImpl implements IIndexMonthDataService{

	@Resource
	private IIndexMonthDataDao indexMonthDataDao;

	@Override
	public List<IndexMonthData> fiIndexMonthDatas(Map<String, Object> map) {
		List<IndexMonthData> list=indexMonthDataDao.findMonthData(map);
		return list;
	}

	@Override
	public List<IndexMonthData> findHonor(String staffCode) {
		return indexMonthDataDao.findHonor(staffCode);
	}
}
