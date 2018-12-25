package com.asiainfo.abdinfo.po;

import java.io.Serializable;

public class typeContent implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private String type;
	
	private String content;


	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "typeContent [type=" + type + ", content=" + content + "]";
	}

	
	
	

}
