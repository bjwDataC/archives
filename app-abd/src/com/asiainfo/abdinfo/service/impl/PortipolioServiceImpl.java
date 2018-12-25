package com.asiainfo.abdinfo.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.asiainfo.abdinfo.dao.IPortipolioDao;
import com.asiainfo.abdinfo.po.Portipolio;
import com.asiainfo.abdinfo.service.IPortipolioService;

@Service("IPortipolioService")
public class PortipolioServiceImpl implements IPortipolioService{
	
	@Resource
	private IPortipolioDao portipolioDao;
	
	@Override
	public JSONArray findYear(Map<String, Object> map) {
		List<Portipolio> year=portipolioDao.findYear(map);
		JSONArray years=(JSONArray)JSON.toJSON(year);
		return years;
	}
	//获取小红花信息
	
	@Override
	public JSONArray findRedFlower(Map<String, Object> map) {//获取年份
		List<List<Portipolio>> redFlowers = new ArrayList<List<Portipolio>>(); 
		for (Portipolio portipolio : portipolioDao.findYear(map)) {
			System.out.println(portipolio.getYear());
			map.put("year", portipolio.getYear());//将每一年的参数存到map集合并覆盖前一年的参数
			redFlowers.add(portipolioDao.findRedFlower(map));
			
			System.out.println(redFlowers);
		}
		JSONArray redFlower=(JSONArray)JSON.toJSON(redFlowers);
		return redFlower;
	}
	
	//单项奖积分查询
	@Override
	public JSONArray findPortipolio(Map<String, Object> map) {
		List<List<Portipolio>> portipolios = new ArrayList<List<Portipolio>>();
		for (Portipolio portipolio : portipolioDao.findYear(map)) {
			map.put("year", portipolio.getYear());//将每一年的参数存到map集合并覆盖前一年的参数
			portipolios.add(portipolioDao.findPortipolio(map));
		}
		JSONArray portipolio=(JSONArray)JSON.toJSON(portipolios);
		return portipolio;
	}
	
	//单项奖个数查询
	@Override
	public JSONArray findPortipolioNum(Map<String, Object> map) {
		List<List<Portipolio>> portipoliosNum = new ArrayList<List<Portipolio>>();
		for (Portipolio portipolio : portipolioDao.findYear(map)) {
			map.put("year", portipolio.getYear());//将每一年的参数存到map集合并覆盖前一年的参数
			portipoliosNum.add(portipolioDao.findPortipolioNum(map));
		}
		JSONArray portipolioNum=(JSONArray)JSON.toJSON(portipoliosNum);
		return portipolioNum;
	}
	//优质服务积分
	@Override
	public JSONArray findFirstService(Map<String, Object> map) {
		List<List<Portipolio>> firstServices = new ArrayList<List<Portipolio>>();
		for (Portipolio portipolio : portipolioDao.findYear(map)) {
			map.put("year", portipolio.getYear());//将每一年的参数存到map集合并覆盖前一年的参数
			firstServices.add(portipolioDao.findFirstService(map)) ;
		}
		JSONArray firstService=(JSONArray)JSON.toJSON(firstServices);
		return firstService;
	}

	
	//优质服务金额
	@Override
	public JSONArray findFirstServiceMoney(Map<String, Object> map) {
		List<List<Portipolio>> firstServiceMoneys = new ArrayList<List<Portipolio>>();
		for (Portipolio portipolio : portipolioDao.findYear(map)) {
			map.put("year", portipolio.getYear());//将每一年的参数存到map集合并覆盖前一年的参数
			firstServiceMoneys.add(portipolioDao.findFirstServiceMoney(map)) ;
		}
		JSONArray firstServiceMoney=(JSONArray)JSON.toJSON(firstServiceMoneys);
		return firstServiceMoney;
	}
	
	//优质服务金额
	@Override
	public JSONArray findSmallQualityService(Map<String, Object> map) {
		List<List<Portipolio>> smallQualityService = new ArrayList<List<Portipolio>>();
		for (Portipolio portipolio : portipolioDao.findYear(map)) {
			map.put("year", portipolio.getYear());//将每一年的参数存到map集合并覆盖前一年的参数
			smallQualityService.add(portipolioDao.findSmallQualityService(map)) ;
		}
		JSONArray sqsJson=(JSONArray)JSON.toJSON(smallQualityService);
		return sqsJson;
	}

}
