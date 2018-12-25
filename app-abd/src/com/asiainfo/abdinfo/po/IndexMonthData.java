package com.asiainfo.abdinfo.po;

import java.io.Serializable;

/**月数据实体类*/
public class IndexMonthData implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6669097712578251322L;
	private int id;
	private String sta_type;//类型
	private float type_count;//数据
	private int ranking;//排名
	public IndexMonthData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public IndexMonthData(int id, String sta_type, float type_count, int ranking) {
		super();
		this.id = id;
		this.sta_type = sta_type;
		this.type_count = type_count;
		this.ranking = ranking;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSta_type() {
		return sta_type;
	}
	public void setSta_type(String sta_type) {
		this.sta_type = sta_type;
	}
	public float getType_count() {
		return type_count;
	}
	public void setType_count(float type_count) {
		this.type_count = type_count;
	}
	public int getRanking() {
		return ranking;
	}
	public void setRanking(int ranking) {
		this.ranking = ranking;
	}
	
}
