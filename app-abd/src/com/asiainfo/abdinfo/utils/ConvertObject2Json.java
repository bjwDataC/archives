/**
 * 
 */
package com.asiainfo.abdinfo.utils;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import com.alibaba.fastjson.JSON;

public final class ConvertObject2Json {
	
	
	
	private static final Log log = LogFactory.getLog(ConvertObject2Json.class);
	
	/**
	 * 方法功能：将对象转换成JSON字符串，并响应回前台
	 * 参数：object
	 * 返回值：void
	 * 异常：IOException
	 */
	public static void writeJson(Object object,HttpServletRequest request, HttpServletResponse response) {
		PrintWriter out = null;
		try {
			String datePattern = "yyyy-MM-dd";
			String json = JSON.toJSONStringWithDateFormat(object, datePattern);
			response.setContentType("text/html;charset=utf-8");
			out = response.getWriter();
			out.write(json);
			out.flush();
		} catch (IOException e) {
			log.error("��Ӧjson����쳣��"  + e);
		} finally {
			if (out != null) {
				out.close();
			}
		}
	}
	public static DataGridBean getAppOrderAllById(List<Object> list) throws Exception {
		List<Object> listDto = new ArrayList<Object>();
		for (int i = 0; i < list.size(); i++) {
			Object bean = list.get(i);
			listDto.add(bean);
		}

		
		DataGridBean dgd = new DataGridBean();
		dgd.setTotal(list.size());
		dgd.setRows(listDto);

		return dgd;
	}

}   







