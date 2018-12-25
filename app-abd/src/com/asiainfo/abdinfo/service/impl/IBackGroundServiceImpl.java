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
	public JSONObject getInfo(Map map) {
		List<DayInfo> t=iDayDataDao.selectInfo(map);
		
		JSONObject all=new JSONObject();
		//----黄条
		JSONObject huangtiao=new JSONObject();
		List<String> huangtiaoDataList=new ArrayList<String>();
		List<String> huangTiaoCountList=new ArrayList<String>();
		
		JSONObject fail=new JSONObject();
		List<String> failDateList=new ArrayList<String>();
		List<String> failCountList=new ArrayList<String>();
		
		JSONObject effective=new JSONObject();
		List<String> effectiveDate=new ArrayList<String>();
		List<String> effectiveCount=new ArrayList<String>();
		
		JSONObject info=new JSONObject();
		List<String> infoDate=new ArrayList<String>();
		List<String> infoCount=new ArrayList<String>();
		
		for(int i=0;i<t.size();i++){
			if(t.get(i).getHuangTiaoDate()!=null){
				huangtiaoDataList.add(t.get(i).getHuangTiaoDate());
				huangTiaoCountList.add(t.get(i).getHuangTiaoCount());
			}
			
			if(t.get(i).getFailDate()!=null){
				failDateList.add(t.get(i).getFailDate());
				failCountList.add(t.get(i).getFailCount());
			}
			
			if(t.get(i).getEffectiveDate()!=null){
				effectiveDate.add(t.get(i).getEffectiveDate());
				effectiveCount.add(t.get(i).getEffectiveCount());
			}
		    
			if(t.get(i).getInfoDate()!=null){
				infoDate.add(t.get(i).getInfoDate());
				infoCount.add(t.get(i).getInfoCount());
			}		
		}
		huangtiao.put("huangtiaoDate", huangtiaoDataList);
		huangtiao.put("huangtiaoCount", huangTiaoCountList);
		fail.put("failDateList", failDateList);
		fail.put("failCountList", failCountList);
		effective.put("effectiveDate", effectiveDate);
		effective.put("effectiveCount", effectiveCount);
		info.put("infoDate", infoDate);
		info.put("infoCount", infoCount);
		all.put("huangtiaos", huangtiao);
		all.put("fails", fail);
		all.put("effectives", effective);
		all.put("infoa", info);
		return all;
	}
	
	
	@Override
	public List<SmallExcellent> getSmallExcellent(Map map) {
		
		return iDayDataDao.smallExcellent(map);
	}
	
	

	
	
	
}



