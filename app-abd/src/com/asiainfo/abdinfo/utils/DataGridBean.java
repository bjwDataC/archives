package com.asiainfo.abdinfo.utils;

import java.io.Serializable;
import java.util.List;

public class DataGridBean implements Serializable {
	
	
	private static final long serialVersionUID = 1L;

	//表格数据
	private List<?> rows;
	
	//表格数据
	private List<?> footer;
	
	
	public List<?> getFooter() {
		return footer;
	}

	public void setFooter(List<?> footer) {
		this.footer = footer;
	}

	//总记录数
	private long total;


	public List<?> getRows() {
		return rows;
	}

	public void setRows(List<?> rows) {
		this.rows = rows;
	}

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	
	
	
}
