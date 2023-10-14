package com.spring.dao;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.command.SearchListCommand;
import com.spring.dto.RecordVO;

public class RecordDAOImpl implements RecordDAO{

	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	@Override
	public List<RecordVO> selectRecordList() throws SQLException {
		List<RecordVO> record = session.selectList("Record-Mapper.selectRecordList");
		return record;
	}
	@Override
	public List<RecordVO> selectRecentRecordList() throws SQLException {
		List<RecordVO> record = session.selectList("Record-Mapper.selectRecentRecordList");
		return record;
	}
	@Override
	public List<RecordVO> selectRecordListByHwcode(String HwCode) throws SQLException {
		List<RecordVO> record = session.selectList("Record-Mapper.selectRecordListByHwcode", HwCode);
		return record;
	}
	@Override
	public List<RecordVO> selectRecordListByRecDate(Date RecDate) throws SQLException {
		List<RecordVO> record = session.selectList("Record-Mapper.selectRecordListByRecDate",RecDate);
		return record;
	}
	@Override
	public void insertRecordList(RecordVO record) throws SQLException {
		session.update("Record-Mapper.insertRecordList",record);
	}
	

}
