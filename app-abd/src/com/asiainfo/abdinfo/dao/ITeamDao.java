package com.asiainfo.abdinfo.dao;
/**成长之路里  团队参与  等相关内容的接口*/
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.asiainfo.abdinfo.po.CoachingRecord;
import com.asiainfo.abdinfo.po.Management;
import com.asiainfo.abdinfo.po.Qualification;

public interface ITeamDao {
	List<CoachingRecord> fingTeam(@Param("staffCode")String staffCode);//团队参与
	
	List<CoachingRecord> fingCompanyKnowledge(@Param("staffCode")String staffCode);//公共课
	
	List<CoachingRecord> fingInductionTraining(@Param("staffCode")String staffCode);//新员工培训

	List<CoachingRecord> fingReadingFeeling(@Param("staffCode")String staffCode);//读书心得
	
	List<Management> fingManagementReservePool(@Param("staffCode")String staffCode);//查找管理干部储备池成绩
	
	List<Qualification> findQualification(@Param("staffCode")String staffCode);// 查找任职资格答辩
}
