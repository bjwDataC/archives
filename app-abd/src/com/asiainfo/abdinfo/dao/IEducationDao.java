package com.asiainfo.abdinfo.dao;
/*里程碑接口*/

import java.util.List;
import java.util.Map;

import com.asiainfo.abdinfo.po.Education;

public interface IEducationDao {
	
	public List<Education> findEducation(Map<String, Object> map);
}
