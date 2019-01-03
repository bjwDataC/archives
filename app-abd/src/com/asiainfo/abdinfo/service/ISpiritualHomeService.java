package com.asiainfo.abdinfo.service;

import java.util.List;
import java.util.Map;


import com.asiainfo.abdinfo.po.CoachingRecord;
/**心灵家园service层接口*/
public interface ISpiritualHomeService {
	//日总结
	public Map<String, Object> findDaySummarize(String staffCode,String date);
	//月数据
	public Map<String, Object> findMonthSummarize(String staffCode,String date);
	//经理评价
	public Map<String, Object> findManagerEvaluation(String staffCode,String date);

}
