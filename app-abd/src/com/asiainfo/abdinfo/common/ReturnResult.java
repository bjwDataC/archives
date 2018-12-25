package com.asiainfo.abdinfo.common;


import java.io.Serializable;
import java.util.Map;

import com.alibaba.fastjson.JSONObject;

public class ReturnResult implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer status;
	private String message;
	private Map<String, ? extends Object> data;
	
	public static final int SUCCESS = 1;
	public static final int FAIL = 0;
	public static final int ERROR = -1;
	
	public ReturnResult() {
		super();
	}

	public ReturnResult(Integer status, Map<String, ? extends Object> data) {
		super();
		this.status = status;
		this.data = data;
	}
	
	public ReturnResult(Integer status, String message) {
		super();
		this.status = status;
		this.message = message;
	}
	
	public ReturnResult(Integer status, String message,
			Map<String, ? extends Object> data) {
		super();
		this.status = status;
		this.message = message;
		this.data = data;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Object getData() {
		return data;
	}

	public void setData(Map<String, Object> data) {
		this.data = data;
	}
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public static ReturnResult success(Map<String, ? extends Object> data) {
		return new ReturnResult(SUCCESS, data);
	}
	
	public static ReturnResult fail(Map<String, ? extends Object> data) {
		return new ReturnResult(FAIL, data);
	}
	
	public static ReturnResult error(Map<String, ? extends Object> data) {
		return new ReturnResult(ERROR, data);
	}
	
	public static ReturnResult fail(String message) {
		return new ReturnResult(FAIL, message);
	}
	
	public static ReturnResult error(String message) {
		return new ReturnResult(ERROR, message);
	}
	
	public static String successJson(Map<String, ? extends Object> data) {
		return JSONObject.toJSONString(success(data));
	}
	
	public static String failJson(Map<String, ? extends Object> data) {
		return JSONObject.toJSONString(fail(data));
	}
	
	public static String errorJson(Map<String, ? extends Object> data) {
		return JSONObject.toJSONString(fail(data));
	}
	
	public static String failJson(String message) {
		return JSONObject.toJSONString(fail(message));
	}
	
	public static String errorJson(String message) {
		return JSONObject.toJSONString(error(message));
	}
	
	public static String failJson(ErrorCode errorCode) {
		return JSONObject.toJSONString(fail('['+errorCode.getStatus()+']'+errorCode.getMessage()));
	}
	
	public static String errorJson(ErrorCode errorCode) {
		return JSONObject.toJSONString(error('['+errorCode.getStatus()+']'+errorCode.getMessage()));
	}
}
