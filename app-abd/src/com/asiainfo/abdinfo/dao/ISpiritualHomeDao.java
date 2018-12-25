package com.asiainfo.abdinfo.dao;
/**心灵家园dao层接口*/

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.asiainfo.abdinfo.po.CoachingRecord;

public interface ISpiritualHomeDao {
	public List<CoachingRecord> findDaySummarize(@Param("staffCode") String staffCode);//查找日总结
	public List<CoachingRecord> findMonthSummarize(@Param("staffCode") String staffCode);//查找月总结
}
