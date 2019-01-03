package com.asiainfo.abdinfo.dao;
/**辅导记录dao层接口*/

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.asiainfo.abdinfo.po.CoachingRecord;

public interface ICoachingRecordDao {
	public List<CoachingRecord> findCoachingRecord(@Param("staffCode") String staffCode,@Param("date") String date);
}
