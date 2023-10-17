package com.spring.service;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.spring.dto.SettingRecordVO;

public interface SettingRecordService {
	
	//설정표 저장
	void SaveSettingTable(SettingRecordVO record) throws SQLException;
	
	//가장 최근 설정 기록 조회
	List<SettingRecordVO> getRecentRecord() throws SQLException;
	
	//특정 시간 설정 기록 조회
	List<SettingRecordVO> getRecordByTime(Date setDate) throws SQLException;
	
	//구간별 설정 기록 조회
	List<SettingRecordVO> getRecordByHwcode(String HwCode) throws SQLException;
	
}
