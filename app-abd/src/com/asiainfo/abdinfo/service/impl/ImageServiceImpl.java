package com.asiainfo.abdinfo.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.asiainfo.abdinfo.dao.IImageDao;
import com.asiainfo.abdinfo.po.Image;
import com.asiainfo.abdinfo.service.IImageService;
@Service
public class ImageServiceImpl implements IImageService{
	
	@Resource
	private IImageDao imageDao;
	@Override
	public Image findImage(Map<String, Object> map) {
		return imageDao.findIamge(map);
	}
	
	//插入头像
	@Override
	public void insertPhone(String staffCode,String type,String path) {
		Map map=new HashMap();
		map.put("staffCode", staffCode);
		map.put("type", type);
		map.put("path", path);
		imageDao.insertPhone(map);		
		System.out.println("插入成功");
	}

	
	//查询插入的头像
	@Override
	public List<String> selectPhnoe(String staffCode) {
		return imageDao.selectPhnoe(staffCode);
	}

}
