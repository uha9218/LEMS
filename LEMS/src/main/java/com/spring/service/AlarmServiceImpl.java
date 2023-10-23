package com.spring.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.dao.AlarmDAO;
import com.spring.dto.AlarmVO;

public class AlarmServiceImpl implements AlarmService{
	
	private AlarmDAO dao;
	public void setAlarmDAO(AlarmDAO dao) {
		this.dao = dao; 
	}
	
	@Override
	public AlarmVO getAlarm() throws SQLException {
		AlarmVO alarm = dao.selectRecentAlarm();
		return alarm;
	}

	@Override
	public List<AlarmVO> getAlarmList() throws SQLException {
		List<AlarmVO> alarm = dao.selectAlarmList();
		return alarm;
	}

}
