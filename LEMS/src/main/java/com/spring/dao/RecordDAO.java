package com.spring.dao;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.spring.dto.RecordVO;

public interface RecordDAO {
	List<RecordVO> selectRecordList() throws SQLException;
	List<RecordVO> selectRecentRecordList() throws SQLException;
	List<RecordVO> selectRecordListByHwcode(String HwCode) throws SQLException;
	List<RecordVO> selectRecordListByRecDate(Date RecDate) throws SQLException;
	void insertRecordList(RecordVO record) throws SQLException;
}
