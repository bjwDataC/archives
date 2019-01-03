package com.asiainfo.abdinfo.dao;
import java.util.List;
/**首页月、多维度数据接口*/
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.asiainfo.abdinfo.po.IndexMonthData;
public interface IIndexMonthDataDao {
	
	/*public IndexMonthData rankingDK(Map<String, Object> map);
	public IndexMonthData rankingQY(Map<String, Object> map);
	public IndexMonthData rankingYX(Map<String, Object> map);
	public IndexMonthData rankingYC(Map<String, Object> map);
	public IndexMonthData rankingXX(Map<String, Object> map);
	public IndexMonthData rankingDH(Map<String, Object> map);
	public IndexMonthData rankingLF(Map<String, Object> map);
	public IndexMonthData rankingQYL(Map<String, Object> map);*/
	public List<IndexMonthData> findMonthData(Map<String, Object> map);
	public List<IndexMonthData> findHonor(@Param(value="staffCode") String staffCode);
}
