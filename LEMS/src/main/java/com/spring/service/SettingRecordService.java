package com.spring.service;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import com.spring.dto.ElecUsingVO;
import com.spring.dto.RecommandVO;
import com.spring.dto.SettingRecordVO;
import com.spring.dto.SunlightVO;

public interface SettingRecordService {
	
	//설정표 저장
	void saveSettingTable(List<SettingRecordVO> record) throws SQLException, ParseException, Exception;
	
	//가장 최근 설정 기록 조회
	List<SettingRecordVO> getRecentRecord() throws SQLException;
	
	//특정 시간 설정 기록 조회
	List<SettingRecordVO> getRecordByTime(Date timeSet) throws SQLException;
	
	//구간별 설정 기록 조회
	List<SettingRecordVO> getRecordByHwcode(String HwCode) throws SQLException;
	
	//구간별 설정 기록 조회(구간)
	List<SettingRecordVO> getRecordByHwCode(String hwCode) throws SQLException;
	
}
