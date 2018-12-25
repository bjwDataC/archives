package com.asiainfo.abdinfo.service;

import java.util.List;
import java.util.Map;
/**首页查找月数据和多维度service层*/
import com.asiainfo.abdinfo.po.IndexMonthData;

public interface IIndexMonthDataService {
	
	public List<IndexMonthData> fiIndexMonthDatas(Map<String, Object> map);
}
