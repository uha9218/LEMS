package com.spring.service;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.spring.dao.SettingRecordDAO;
import com.spring.dto.SettingRecordVO;

public class SettingRecordServiceImpl implements SettingRecordService{

	private SettingRecordDAO dao;
	public void setSettingRecordDAO(SettingRecordDAO dao) {
		this.dao = dao;
	}
	@Override
	public void SaveSettingTable(SettingRecordVO record) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<SettingRecordVO> getRecentRecord() throws SQLException {
		List<SettingRecordVO> setList = dao.selectRecentRecordList();
		return setList;
	}

	@Override
	public List<SettingRecordVO> getRecordByTime(Date setDate) throws SQLException {
		List<SettingRecordVO> setList = dao.selectRecordListBySetDate(setDate);
		return setList;
	}

	@Override
	public List<SettingRecordVO> getRecordByHwcode(String HwCode) throws SQLException {
		List<SettingRecordVO> setList = dao.selectRecordListByHwcode(HwCode);
		return setList;
	}

}
