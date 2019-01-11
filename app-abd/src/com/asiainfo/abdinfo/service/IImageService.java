package com.asiainfo.abdinfo.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.asiainfo.abdinfo.po.Image;

public interface IImageService {
	
	public Image findImage(Map<String, Object> map);
	
	
//	插入头像图片
	public void insertPhone(String staffCode,String type,String path);
	
	
	 //查询刚插入的头像
	public List<String> selectPhnoe(@Param(value="staffCode") String staffCode);
}
