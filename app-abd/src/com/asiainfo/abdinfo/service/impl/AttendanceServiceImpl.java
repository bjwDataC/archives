package com.asiainfo.abdinfo.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.asiainfo.abdinfo.dao.AttendanceDao;
import com.asiainfo.abdinfo.po.Administrative;
import com.asiainfo.abdinfo.po.Person;
import com.asiainfo.abdinfo.po.UserUser;
import com.asiainfo.abdinfo.service.AttendanceService;




@Service(value="AttendanceService")
public class AttendanceServiceImpl implements AttendanceService{
	
	@Autowired
	private AttendanceDao attendanceDao;
	
	

	@Override
	public JSONObject getAttendan(Map map) {
		
//		var objDa={
//	      		data:['蒸发量','降水量'],
//	      		text:"某地区蒸发量和降水量",
//	      		xAxisData:['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
//	      		seriesData:[
//	              	[2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3],
//	              	[2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3]
//	              ],
//	              }
		Person attendance=attendanceDao.selectAttendance(map);
		
	JSONObject objDa=new JSONObject();
		JSONArray xAxisData=new JSONArray();                                    //xAxisData   月份
		JSONArray lateNum=new JSONArray();                                     //迟到
		JSONArray leaveNum=new JSONArray();                                    //请假
		JSONArray overtime=new JSONArray();                                    //加班
		JSONArray seriesData=new JSONArray();       
		for(int i=0;i<attendance.getAttendance().size();i++){
			xAxisData.add(attendance.getAttendance().get(i).getArrMonth());          //月份		
			lateNum.add(attendance.getAttendance().get(i).getLateNum());            //迟到    
			leaveNum.add(attendance.getAttendance().get(i).getLeaveNum());           //请假
			overtime.add(attendance.getAttendance().get(i).getOvertime());             //加班			
		}
		seriesData.add(lateNum);
		seriesData.add(leaveNum);
		seriesData.add(overtime);
		
		String[] str=new String[]{"迟到","请假","加班"};
		objDa.put("data", str);
		objDa.put("text", "考勤");
		objDa.put("xAxisData", xAxisData);
		objDa.put("seriesData", seriesData);
		return objDa;
	}


	@Override
	public Person getBackGround(Map map) {		
		return attendanceDao.selectAttendance(map);
	}


	@Override
	public UserUser getNamePwd(String userID,String pwd) {
		Map<String,String> map=new HashMap<String,String>();
		map.put("staffCode", userID);
		map.put("staffPwd", pwd);
		return attendanceDao.selectNamePwd(map);
	}

	
	//获取考情
	@Override
	public List<String> getYear(String staffCode) {
		return attendanceDao.selectYear(staffCode);
	}
  
	
   /**
   * 用来展示行政数据
   */
	@Override
	public List<Administrative> getAdm(String staffCode, String year) {
		return attendanceDao.selectAdm(staffCode, year);
	}

   
	
	

}







