package com.asiainfo.abdinfo.dao;

import java.util.List;
import java.util.Map;
import com.asiainfo.abdinfo.po.DayInfo;
import com.asiainfo.abdinfo.po.MonthDate;
import com.asiainfo.abdinfo.po.SmallExcellent;
import com.asiainfo.abdinfo.po.Workload;

public interface IDayDataDao {
	
	List<DayInfo> selectInfo(Map map);
	
	/**
	 * 小优
	 * @param map
	 * @return
	 */
	List<SmallExcellent> smallExcellent(Map map);
	
	
	/**
	 * 月数据
	 * @param map
	 * @return
	 */
	List<MonthDate> selectMonth(Map map);
	
	
	/**
	 * 月数据查询类型
	 */
	List<String> selectType(Map map);
	
	
	/**
	 * 日数据有效数据的查询
	 * @param map
	 * @return
	 */
	List<Workload> selecteFfective(Map map);
}





