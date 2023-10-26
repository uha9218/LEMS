package com.spring.service;

import java.sql.SQLException;
import java.util.Map;

import com.spring.dto.AlarmVO;

public interface AlarmService {
	public String getAlarm() throws SQLException;
	public Map<String,Object> getAlarmList() throws SQLException;
}
