package com.asiainfo.abdinfo.dao;

import java.util.List;
import java.util.Map;
import com.asiainfo.abdinfo.po.DayInfo;
import com.asiainfo.abdinfo.po.SmallExcellent;

public interface IDayDataDao {
	
	List<DayInfo> selectInfo(Map map);
	
	/**
	 * 小优
	 * @param map
	 * @return
	 */
	List<SmallExcellent> smallExcellent(Map map);

}
