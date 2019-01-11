package com.asiainfo.abdinfo.po;

import java.io.Serializable;
import java.util.List;

/**辅导记录实体类*/
public class CoachingRecord implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 2608899779969624216L;
	private String time;//日期
	private String staffCode;//人员编码
	private String content;//内容
	private String type;//类型
	private String managerReply;//经理回复
	private List<CorporateClasses> types;//用于封装公共课集合 
	public CoachingRecord() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public CoachingRecord(String time, String staffCode, String content, String type, String managerReply,
			List<CorporateClasses> types) {
		super();
		this.time = time;
		this.staffCode = staffCode;
		this.content = content;
		this.type = type;
		this.managerReply = managerReply;
		this.types = types;
	}

	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getStaffCode() {
		return staffCode;
	}
	public void setStaffCode(String staffCode) {
		this.staffCode = staffCode;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getManagerReply() {
		return managerReply;
	}
	public void setManagerReply(String managerReply) {
		this.managerReply = managerReply;
	}

	public List<CorporateClasses> getTypes() {
		return types;
	}

	public void setTypes(List<CorporateClasses> types) {
		this.types = types;
	}
	
}
