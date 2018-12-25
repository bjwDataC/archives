package com.asiainfo.abdinfo.po;

import java.io.Serializable;
import java.util.List;

import org.codehaus.jackson.annotate.JsonProperty;

//人员表
public class Person implements Serializable {

	private static final long serialVersionUID = 1L;
  
	@JsonProperty("人员编码")
	private String staffCode;
	
    @JsonProperty("姓名")
	private String staffName;

	// 年度
	private String attYear;

	// P.性别,
	@JsonProperty("性别")
	private String gender;
	
	// P.出生日期,
	@JsonProperty("出生日期")
	private String dataBirth;
	
	// P.籍贯省份,
	@JsonProperty("籍贯省份")
	private String province;
	
	// U.学校,
	@JsonProperty("学校")
	private String school;
	// P.学历,
	
	@JsonProperty("学历")
	private String record;
	// B.内容,
	// B.类型,
	
	// P.到职日期,
	@JsonProperty("到职日期")
	private String date;
	// S.事业部,
	@JsonProperty("事业部")
	private String division;
	// S.部门,
	@JsonProperty("部门")
	private String department;
	// S.岗位,
	@JsonProperty("岗位")
	private String jobs;
	// S.职称,
	@JsonProperty("职称")
	private String title;
	// P.QQ,
	@JsonProperty("QQ")
	private String QQ;
	// C.手机号码,
	@JsonProperty("手机号码")
	private String mobilePhone;
	// D.分机号码,
	@JsonProperty("分机号码")
	private String extensionNum;
	// D.企业QQ,
	@JsonProperty("企业QQ")
	private String enterpriseQQ;
	// E.微信号
	@JsonProperty("微信号")
	private String WeChatID;
	

	private List<Attendance> attendance; // 迟到次数

    private List<typeContent> tyContent; 

	public String getStaffCode() {
		return staffCode;
	}

	public void setStaffCode(String staffCode) {
		this.staffCode = staffCode;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public String getAttYear() {
		return attYear;
	}

	public void setAttYear(String attYear) {
		this.attYear = attYear;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDataBirth() {
		return dataBirth;
	}

	public void setDataBirth(String dataBirth) {
		this.dataBirth = dataBirth;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}




	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getJobs() {
		return jobs;
	}

	public void setJobs(String jobs) {
		this.jobs = jobs;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getQQ() {
		return QQ;
	}

	public void setQQ(String qQ) {
		QQ = qQ;
	}

	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getExtensionNum() {
		return extensionNum;
	}

	public void setExtensionNum(String extensionNum) {
		this.extensionNum = extensionNum;
	}

	public String getEnterpriseQQ() {
		return enterpriseQQ;
	}

	public void setEnterpriseQQ(String enterpriseQQ) {
		this.enterpriseQQ = enterpriseQQ;
	}

	public String getWeChatID() {
		return WeChatID;
	}

	public void setWeChatID(String weChatID) {
		WeChatID = weChatID;
	}

	public List<Attendance> getAttendance() {
		return attendance;
	}

	public void setAttendance(List<Attendance> attendance) {
		this.attendance = attendance;
	}

	public List<typeContent> getTyContent() {
		return tyContent;
	}

	public void setTyContent(List<typeContent> tyContent) {
		this.tyContent = tyContent;
	}

	public String getRecord() {
		return record;
	}

	public void setRecord(String record) {
		this.record = record;
	}

	@Override
	public String toString() {
		return "Person [staffCode=" + staffCode + ", staffName=" + staffName + ", attYear=" + attYear + ", gender="
				+ gender + ", dataBirth=" + dataBirth + ", province=" + province + ", school=" + school + ", record="
				+ record + ", date=" + date + ", division=" + division + ", department=" + department + ", jobs=" + jobs
				+ ", title=" + title + ", QQ=" + QQ + ", mobilePhone=" + mobilePhone + ", extensionNum=" + extensionNum
				+ ", enterpriseQQ=" + enterpriseQQ + ", WeChatID=" + WeChatID + ", attendance=" + attendance
				+ ", tyContent=" + tyContent + "]";
	}

	

	
    
	
	

}
