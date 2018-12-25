package com.asiainfo.abdinfo.po;

import java.io.Serializable;

public class Image implements Serializable{
	
	private static final long serialVersionUID = 536408269522693243L;
	private String staffCode;
	private byte[] image;

	public Image() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Image(String staffCode, byte[] image) {
		super();
		this.staffCode = staffCode;
		this.image = image;
	}

	public String getStaffCode() {
		return staffCode;
	}

	public void setStaffCode(String staffCode) {
		this.staffCode = staffCode;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	

}
