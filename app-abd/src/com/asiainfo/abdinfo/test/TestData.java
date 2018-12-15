package com.asiainfo.abdinfo.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.asiainfo.abdinfo.po.Person;
import com.asiainfo.abdinfo.service.AttendanceService;
import com.asiainfo.abdinfo.service.impl.AttendanceServiceImpl;

import net.sf.json.JSONObject;

public class TestData {
	
	@Test
	public void test(){
		AttendanceService mlcvp;
		ApplicationContext ac=new ClassPathXmlApplicationContext("conf/spring-mvc.xml","conf/spring-mybatis.xml");		
		mlcvp=ac.getBean("AttendanceService",AttendanceServiceImpl.class);
		Map map=new HashMap();
		map.put("staffCode", "18060405");
		com.alibaba.fastjson.JSONObject t=mlcvp.getAttendan(map);
		System.out.println(t);
	}

}
