
package com.asiainfo.abdinfo.common;

public enum ErrorCode {

	SUCCESS("0000", "请求成功"),
	UNKOWN_ERROR("9999","未知错误"),
	// 结果
	EMPTY("0001", "结果为空"),
	PARAM_EMPTY("0002", "参数为空"),
	PARAM_ERROR("1002", "输入参数不合法"), 
	NOT_EXISTS("1003", "记录不存在"),

	//架构验证
	NO_AUTH("2001", "账号或密码错误"),
	FILE_UNFIND("1004","文件获取错误"),
	CREATE_FILE_FAIL("1005","创建文件目录失败"),
	
	//审批流程
	APPROVAL_ERROR("1006","审批流程出错"),
	APPROVAL_INEXISTENCE("1007","下级审批人不存在！"),
	PROCESS_INEXISTENCE("1008","审批流程不存在"),
	PROCESS_CREATOR_INEXISTENCE("1009","审批流程创建人不存在"),
	SURVEY_INFO_ERROR("1010","调研信息出错"),
	
	//效果评估
	COMPLAIN_MODEL_ERROR("1011","模型选择出错！"),
	ASSESS_INFO_ERROR("1012","评估数据错误！");
	
	private String status;
	private String message;

	private ErrorCode(String status, String message) {
		this.status = status;
		this.message = message;
	}

	public String getStatus() {
		return status;
	}

	public String getMessage() {
		return message;
	}

	public String getMessage(String[] args) {
		int index = 0;
		String tempMsg = message;
		for(String arg : args) {
			tempMsg=tempMsg.replace("{"+index+++"}", arg);
		}
		return tempMsg;
	}

}
