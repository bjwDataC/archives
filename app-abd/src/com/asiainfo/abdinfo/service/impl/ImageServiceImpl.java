package com.asiainfo.abdinfo.service.impl;

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

}
