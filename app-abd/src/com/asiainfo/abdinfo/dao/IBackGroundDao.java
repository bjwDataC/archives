package com.asiainfo.abdinfo.dao;

import java.util.List;
import java.util.Map;
import com.asiainfo.abdinfo.po.Person;

import com.asiainfo.abdinfo.po.Contract;
public interface IBackGroundDao {
	
	Person selectBackGround(Map map);
	
	/*用来展示合同*/
	public List<Contract> selectContract(Map map);
	

}
