package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.AlarmVO;

public class AlarmDAOImpl implements AlarmDAO{
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	@Override
	public List<AlarmVO> selectAlarmList() throws SQLException {
		List<AlarmVO> alarm = session.selectList("Alarm-Mapper.selectAlarmList");
		return alarm;
	}
	@Override
	public AlarmVO selectRecentAlarm() throws SQLException {
		AlarmVO alarm = session.selectOne("Alarm-Mapper.selectRecentAlarm");
		return alarm;
	}
	@Override
	public void insertRecordList(List<AlarmVO> alarm) throws SQLException {
		for(int i=0;i<alarm.size();i++) {
			session.insert("Alarm-Mapper.insertRecordList",alarm.get(i));
		}
		
	}
	@Override
	public int selectAlarmNumSeqNext() throws SQLException {
		int seq = session.selectOne("Alarm-Mapper.selectAlarmNumSeqNext");
		return seq;
	}
}
