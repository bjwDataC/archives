package com.asiainfo.abdinfo.dao;
/**心灵家园dao层接口*/

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.asiainfo.abdinfo.po.CoachingRecord;

public interface ISpiritualHomeDao {
	//日数据
	public List<CoachingRecord> findDaySummarize(@Param("staffCode") String staffCode,@Param("date") String date);//查找日总结
	//月数据
	public List<CoachingRecord> findMonthSummarize(@Param("staffCode") String staffCode,@Param("date") String date);//查找月总结
	//经理评价
	public List<CoachingRecord> findManagerEvaluation(@Param("staffCode") String staffCode,@Param("date") String date);//查找月总结
	
	
}
