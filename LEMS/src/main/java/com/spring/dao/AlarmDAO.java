package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.dto.AlarmVO;

public interface AlarmDAO {

	
	List<AlarmVO> selectAlarmList() throws SQLException;
	AlarmVO selectRecentAlarm() throws SQLException;
	void insertRecordList(List<AlarmVO> alarm) throws SQLException;
	int selectAlarmNumSeqNext() throws SQLException;
	
	
}
