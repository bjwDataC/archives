package com.asiainfo.abdinfo.common;

import java.util.List;

public class ListObject extends AbstractJSON {
 
    private List<?> items;                       // 列表对象
 
	public List<?> getItems() {
		return items;
	}
 
	public void setItems(List<?> items) {
		this.items = items;
	}
    
}
