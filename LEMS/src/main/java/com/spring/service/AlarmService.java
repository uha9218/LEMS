package com.spring.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.dto.AlarmVO;

public interface AlarmService {
	public AlarmVO getAlarm() throws SQLException;
	public List<AlarmVO> getAlarmList() throws SQLException;
}
