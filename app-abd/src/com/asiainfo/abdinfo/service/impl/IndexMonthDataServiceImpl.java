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
		/*IndexMonthData rankingDK=indexMonthDataDao.rankingDK(map);
		IndexMonthData rankingQY=indexMonthDataDao.rankingQY(map);
		IndexMonthData rankingYX=indexMonthDataDao.rankingYX(map);
		IndexMonthData rankingYC=indexMonthDataDao.rankingYC(map);
		IndexMonthData rankingXX=indexMonthDataDao.rankingXX(map);
		IndexMonthData rankingDH=indexMonthDataDao.rankingDH(map);
		IndexMonthData rankingLF=indexMonthDataDao.rankingLF(map);
		IndexMonthData rankingQYL=indexMonthDataDao.rankingQYL(map);*/
		List<IndexMonthData> list=indexMonthDataDao.findMonthData(map);
		/*list.add(rankingDK);
		list.add(rankingQY);
		list.add(rankingYX);
		list.add(rankingYC);
		list.add(rankingXX);
		list.add(rankingDH);
		list.add(rankingLF);
		list.add(rankingQYL);*/
		return list;
	}
}
