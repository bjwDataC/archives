package com.asiainfo.abdinfo.po;

import java.io.Serializable;

/**
 * 合同表
 * @author Administrator
 *
 */
public class Contract implements Serializable{

	private static final long serialVersionUID = 1L;
	

//	private String staffCode;//人员编码 协议编号
//	private String staffName;//姓名
//	合同编号
	private String contractNum;
//	合同类型
	private String contractType;
//	到职日期
	private String startingData;
//	签订日期
	private String signingDate;
//	到期日期
	private String dueDate;	
//	合同期限
	private String contractDead;
//	public String getStaffCode() {
//		return staffCode;
//	}
//	public void setStaffCode(String staffCode) {
//		this.staffCode = staffCode;
//	}
//	public String getStaffName() {
//		return staffName;
//	}
//	public void setStaffName(String staffName) {
//		this.staffName = staffName;
//	}
	public String getContractNum() {
		return contractNum;
	}
	public void setContractNum(String contractNum) {
		this.contractNum = contractNum;
	}
	public String getContractType() {
		return contractType;
	}
	public void setContractType(String contractType) {
		this.contractType = contractType;
	}
	public String getStartingData() {
		return startingData;
	}
	public void setStartingData(String startingData) {
		this.startingData = startingData;
	}
	public String getSigningDate() {
		return signingDate;
	}
	public void setSigningDate(String signingDate) {
		this.signingDate = signingDate;
	}
	public String getDueDate() {
		return dueDate;
	}
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
	public String getContractDead() {
		return contractDead;
	}
	public void setContractDead(String contractDead) {
		this.contractDead = contractDead;
	}
	@Override
	public String toString() {
		return "Contract [contractNum=" + contractNum + ", contractType=" + contractType + ", startingData="
				+ startingData + ", signingDate=" + signingDate + ", dueDate=" + dueDate + ", contractDead="
				+ contractDead + "]";
	}


	
	
}
