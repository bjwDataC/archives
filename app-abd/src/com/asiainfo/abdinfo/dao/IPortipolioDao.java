package com.asiainfo.abdinfo.dao;

import java.util.List;
import java.util.Map;

import com.asiainfo.abdinfo.po.Portipolio;

public interface IPortipolioDao {
	
	//查找在公司的年份
	public List<Portipolio> findYear(Map<String, Object> map);
	//查找小红花信息
	public List<Portipolio> findRedFlower(Map<String, Object> map);
	//单项奖积分信息
	public List<Portipolio> findPortipolio(Map<String, Object> map);
	//单项奖个数信息
	public List<Portipolio> findPortipolioNum(Map<String, Object> map);
	//查找优质服务积分信息
	public List<Portipolio> findFirstService(Map<String, Object> map);
	//查找优质服务金额信息
	public List<Portipolio> findFirstServiceMoney(Map<String, Object> map);
	//查找小优内容
	public List<Portipolio> findSmallQualityService(Map<String, Object> map);
	
	
}
