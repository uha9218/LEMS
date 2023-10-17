package com.spring.dao;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.spring.dto.SettingRecordVO;

public interface SettingRecordDAO {
	List<SettingRecordVO> selectRecordList() throws SQLException;
	List<SettingRecordVO> selectRecentRecordList() throws SQLException;
	List<SettingRecordVO> selectAdminRecordList() throws SQLException;
	List<SettingRecordVO> selectRecordListByHwcode(String HwCode) throws SQLException;
	List<SettingRecordVO> selectRecordListBySetDate(Date SetDate) throws SQLException;
	void insertRecordList(SettingRecordVO record) throws SQLException;
}
