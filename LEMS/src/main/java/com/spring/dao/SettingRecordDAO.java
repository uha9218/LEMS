package com.spring.dao;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import com.spring.dto.SettingRecordVO;

public interface SettingRecordDAO {
	List<SettingRecordVO> selectRecordList() throws SQLException;
	List<SettingRecordVO> selectRecentRecordList() throws SQLException;	//기본 추천 설정표 조회
	List<SettingRecordVO> selectAdminRecordList() throws SQLException;	
	List<SettingRecordVO> selectRecordListByHwcode(String HwCode) throws SQLException;		
	List<SettingRecordVO> selectRecordListBySetDate(Date SetDate) throws SQLException;
	List<SettingRecordVO> selectRecordListByTimeSet(Date TimeSet) throws SQLException;	//TimeSet중 가장 최근 기록을 가져옴
	void insertRecordList(List<SettingRecordVO> record) throws SQLException, ParseException;	//관리자가 설정시 DB삽입
	void updateRecordList(List<SettingRecordVO> record)throws SQLException, ParseException;	//추천 설정표가 나오면 관리자 설정과 합쳐서 DB삽입
}
