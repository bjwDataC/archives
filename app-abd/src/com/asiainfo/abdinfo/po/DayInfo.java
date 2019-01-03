package com.asiainfo.abdinfo.po;

import java.io.Serializable;
import java.util.List;

import org.codehaus.jackson.annotate.JsonProperty;

/**
 * 日常数据信息
 * @author Administrator
 *
 */
public class DayInfo implements Serializable{

	private static final long serialVersionUID = 1L;
	

	  @JsonProperty("日期")
	  private String dateRefence;
	  
	  @JsonProperty("黄条")
	  private String huangTiaoCount;
	  
	  @JsonProperty("打失败数")
	  private String failCount;
	  
	  @JsonProperty("有效")
	  private String effectiveCount;
	  
	  @JsonProperty("新增信息")
	  private String infoCount;

	public String getDateRefence() {
		return dateRefence;
	}

	public void setDateRefence(String dateRefence) {
		this.dateRefence = dateRefence;
	}

	public String getHuangTiaoCount() {
		return huangTiaoCount;
	}

	public void setHuangTiaoCount(String huangTiaoCount) {
		this.huangTiaoCount = huangTiaoCount;
	}

	public String getFailCount() {
		return failCount;
	}

	public void setFailCount(String failCount) {
		this.failCount = failCount;
	}

	public String getEffectiveCount() {
		return effectiveCount;
	}

	public void setEffectiveCount(String effectiveCount) {
		this.effectiveCount = effectiveCount;
	}

	public String getInfoCount() {
		return infoCount;
	}

	public void setInfoCount(String infoCount) {
		this.infoCount = infoCount;
	}

	@Override
	public String toString() {
		return "DayInfo [dateRefence=" + dateRefence + ", huangTiaoCount=" + huangTiaoCount + ", failCount=" + failCount
				+ ", effectiveCount=" + effectiveCount + ", infoCount=" + infoCount + "]";
	}
	  
	  


	  

}

