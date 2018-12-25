package com.asiainfo.abdinfo.service;

import java.util.Map;

import com.asiainfo.abdinfo.po.Image;

public interface IImageService {
	
	public Image findImage(Map<String, Object> map);
}
