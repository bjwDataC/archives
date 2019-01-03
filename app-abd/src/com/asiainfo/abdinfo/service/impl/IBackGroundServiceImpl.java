package com.asiainfo.abdinfo.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.asiainfo.abdinfo.dao.IBackGroundDao;
import com.asiainfo.abdinfo.dao.IDayDataDao;
import com.asiainfo.abdinfo.po.Contract;
import com.asiainfo.abdinfo.po.DayDate;
import com.asiainfo.abdinfo.po.DayInfo;
import com.asiainfo.abdinfo.po.MonthDate;
import com.asiainfo.abdinfo.po.Person;
import com.asiainfo.abdinfo.po.SmallExcellent;
import com.asiainfo.abdinfo.service.IBackGroundService;

@Service("IBackGroundService")
public class IBackGroundServiceImpl implements IBackGroundService{
	
	@Autowired
	private IBackGroundDao iBackGroundDao;
	
	@Autowired
	private IDayDataDao iDayDataDao;
	
	public Person getBackGround(Map map){
		return iBackGroundDao.selectBackGround(map);
	}
	@Override
	public List<Contract> getContract(Map map) {
		return iBackGroundDao.selectContract(map);	
	}
   
	/**
	 * 用来查询日数据的信息模块
	 */
	@Override
	public JSONObject  getInfo(Map map) {
		List<DayInfo> t=iDayDataDao.selectInfo(map);
		JSONObject json=new JSONObject();
		List<String> dateList=new ArrayList<String>();  //时间
		List<List<String>> allList=new ArrayList<List<String>>();  //总共
		List<String> huangTiao=new ArrayList<String>();  //黄条
		List<String> effective=new ArrayList<String>();  //有效
		List<String> fail=new ArrayList<String>();  //失败
		List<String> info=new ArrayList<String>();  //新增信息
		String [] strName={"黄条","有效","失败","新增信息"};
		 for(int i=0;i<t.size();i++){
			 t.get(i).getInfoCount();
			 info.add(t.get(i).getInfoCount());
			 dateList.add(t.get(i).getDateRefence());
			 huangTiao.add(t.get(i).getHuangTiaoCount());
			 effective.add(t.get(i).getEffectiveCount());
			 fail.add(t.get(i).getFailCount());
		 }
		 allList.add(huangTiao);
		 allList.add(effective);
		 allList.add(fail);
		 allList.add(info);
		 
		 json.put("dateList", dateList);
		 json.put("allList", allList);
		 json.put("strName", strName);
		return json;
	}
	
	
	/**
	 * 用来查询日数据的小优
	 */
	@Override
	public JSONObject getSmallExcellent(Map map) {
		List<SmallExcellent> smE=iDayDataDao.smallExcellent(map);
		JSONObject json=new JSONObject();
		List<String> dateList=new ArrayList<String>();  //时间
		List<List<String>> allList=new ArrayList<List<String>>();  //总共
		List<String> smallExcellent=new ArrayList<String>();  //小优
		String [] strName={"小优"};
		for(int i=0;i<smE.size();i++){
			dateList.add(smE.get(i).getSmallDate());
			smallExcellent.add(smE.get(i).getSamllCount());
		}
		allList.add(smallExcellent);
		json.put("dateList", dateList);
		json.put("allList", allList);
		json.put("strName", strName);
		return json;
	}
	
	
	/**
	 * 月数据
	 */
	@Override
	public List<MonthDate> getMonth(Map map) {
		 return iDayDataDao.selectMonth(map);
		
	}
	
	/**
	 * 月数据查询类型
	 */
	@Override
	public List<String> getType(Map map) {
		return iDayDataDao.selectType(map);
	}
	
	

	
	
	
}



