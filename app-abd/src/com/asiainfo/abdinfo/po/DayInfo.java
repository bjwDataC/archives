package com.asiainfo.abdinfo.po;

import java.io.Serializable;
import java.util.List;

/**
 * 日常数据信息
 * @author Administrator
 *
 */
public class DayInfo implements Serializable{

	private static final long serialVersionUID = 1L;
	
//	  aa.zixunshi_no as staffCode,
	  private String  staffCode;
//    aa.[date] as [huangTiaoDate],
	  private String huangTiaoDate;
//    aa.count_huangtiao as huangTiaoCount,
	  private String huangTiaoCount;
//    bb.日期 failDate,
	  private String failDate;
//    bb.失败客户数  failCount,
	  private String failCount;
//    cc.[DATE] AS effectiveDate,
	  private String effectiveDate;
//    cc.Effective_number AS effectiveCount,
	  private String effectiveCount;
//    dd.日期 AS infoDate,
	  private String infoDate;
//    dd.信息数 AS infoCount
	  private String infoCount;
	public String getStaffCode() {
		return staffCode;
	}
	public void setStaffCode(String staffCode) {
		this.staffCode = staffCode;
	}
	public String getHuangTiaoDate() {
		return huangTiaoDate;
	}
	public void setHuangTiaoDate(String huangTiaoDate) {
		this.huangTiaoDate = huangTiaoDate;
	}
	public String getHuangTiaoCount() {
		return huangTiaoCount;
	}
	public void setHuangTiaoCount(String huangTiaoCount) {
		this.huangTiaoCount = huangTiaoCount;
	}
	public String getFailDate() {
		return failDate;
	}
	public void setFailDate(String failDate) {
		this.failDate = failDate;
	}
	public String getFailCount() {
		return failCount;
	}
	public void setFailCount(String failCount) {
		this.failCount = failCount;
	}
	public String getEffectiveDate() {
		return effectiveDate;
	}
	public void setEffectiveDate(String effectiveDate) {
		this.effectiveDate = effectiveDate;
	}
	public String getEffectiveCount() {
		return effectiveCount;
	}
	public void setEffectiveCount(String effectiveCount) {
		this.effectiveCount = effectiveCount;
	}
	public String getInfoDate() {
		return infoDate;
	}
	public void setInfoDate(String infoDate) {
		this.infoDate = infoDate;
	}
	public String getInfoCount() {
		return infoCount;
	}
	public void setInfoCount(String infoCount) {
		this.infoCount = infoCount;
	}
	@Override
	public String toString() {
		return "DayInfo [staffCode=" + staffCode + ", huangTiaoDate=" + huangTiaoDate + ", huangTiaoCount="
				+ huangTiaoCount + ", failDate=" + failDate + ", failCount=" + failCount + ", effectiveDate="
				+ effectiveDate + ", effectiveCount=" + effectiveCount + ", infoDate=" + infoDate + ", infoCount="
				+ infoCount + "]";
	}
	  
	  

}

