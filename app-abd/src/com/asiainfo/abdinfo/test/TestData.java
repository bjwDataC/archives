package com.asiainfo.abdinfo.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.asiainfo.abdinfo.po.DayDate;
import com.asiainfo.abdinfo.po.SmallExcellent;
import com.asiainfo.abdinfo.service.IBackGroundService;
import com.asiainfo.abdinfo.service.impl.IBackGroundServiceImpl;


public class TestData {
	
	@Test
	public void test(){
		IBackGroundService mlcvp;
		ApplicationContext ac=new ClassPathXmlApplicationContext("conf/spring-mvc.xml","conf/spring-mybatis.xml");		
		mlcvp=ac.getBean("IBackGroundService",IBackGroundServiceImpl.class);
		Map map=new HashMap();
		map.put("staffCode", "16040801");
		map.put("beginData", "2016-05-17");
		map.put("endData", "2016-05-22");
	   List<SmallExcellent> t=mlcvp.getSmallExcellent(map);
		System.out.println(t);
	}

	
}





