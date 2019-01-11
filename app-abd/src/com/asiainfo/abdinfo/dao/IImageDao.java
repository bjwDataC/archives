package com.asiainfo.abdinfo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.asiainfo.abdinfo.po.Image;

public interface IImageDao {
	public Image findIamge(Map<String, Object> map);
	
	
   //插入头像图片
	public void insertPhone(Map map);
	
   //查询刚插入的头像
	public List<String> selectPhnoe(@Param(value="staffCode") String staffCode);


}
