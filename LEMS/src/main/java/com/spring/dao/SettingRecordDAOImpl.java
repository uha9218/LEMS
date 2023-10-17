package com.spring.dao;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import com.spring.dto.SettingRecordVO;

public class SettingRecordDAOImpl implements SettingRecordDAO{

	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	@Override
	public List<SettingRecordVO> selectRecordList() throws SQLException {
		List<SettingRecordVO> srList = session.selectList("SettingRecord-Mapper.selectRecordList");
		return srList;
	}
	@Override
	public List<SettingRecordVO> selectRecentRecordList() throws SQLException {
		List<SettingRecordVO> srList = session.selectList("SettingRecord-Mapper.selectRecentRecordList");
		for(int i=0;i<srList.size();i++) {
			if(srList.get(i).getLightState()==1) {srList.get(i).setStrState("on");}
			else srList.get(i).setStrState("off");
		}
		return srList;
	}
	@Override
	public List<SettingRecordVO> selectAdminRecordList() throws SQLException {
		List<SettingRecordVO> srList = session.selectList("SettingRecord-Mapper.selectAdminRecordList");
		return srList;
	}
	@Override
	public List<SettingRecordVO> selectRecordListByHwcode(String HwCode) throws SQLException {
		List<SettingRecordVO> srList = session.selectList("SettingRecord-Mapper.selectRecordListByHwcode", HwCode);
		return srList;
	}
	@Override
	public List<SettingRecordVO> selectRecordListBySetDate(Date SetDate) throws SQLException {
		List<SettingRecordVO> srList = session.selectList("SettingRecord-Mapper.selectRecordListBySetDate",SetDate);
		return srList;
	}
	@Override
	public void insertRecordList(SettingRecordVO record) throws SQLException {
		session.update("SettingRecord-Mapper.insertRecordList");
	}
	

}
