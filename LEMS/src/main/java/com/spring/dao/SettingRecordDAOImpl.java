package com.spring.dao;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.RecommandVO;
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
			else if(srList.get(i).getLightState()==0) {srList.get(i).setStrState("off");}
			else {srList.get(i).setStrState("수리중");}
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
		for(int i=0;i<srList.size();i++) {
			if(srList.get(i).getLightState()==1) {srList.get(i).setStrState("on");}
			else if(srList.get(i).getLightState()==0) {srList.get(i).setStrState("off");}
			else {srList.get(i).setStrState("수리중");}
		}
		return srList;
	}
	@Override
	public List<SettingRecordVO> selectRecordListByTimeSet(Date timeSet) throws SQLException {
		List<SettingRecordVO> srList = session.selectList("SettingRecord-Mapper.selectRecordListByTimeSet",timeSet);
		for(int i=0;i<srList.size();i++) {
			if(srList.get(i).getLightState()==1 || srList.get(i).getLightState()==10) {srList.get(i).setStrState("on");}
			else if(srList.get(i).getLightState()==0 || srList.get(i).getLightState()==11) {srList.get(i).setStrState("off");}
			else {srList.get(i).setStrState("수리중");}
		}
		return srList;
	}
	@Override
	public void insertRecordList(List<SettingRecordVO> record) throws SQLException, ParseException {
		for(int i=0;i<record.size();i++) {
			session.update("SettingRecord-Mapper.insertRecordList",record.get(i));
			System.out.println("DAO"+record.get(i).getHwCode()+" "+record.get(i).getLightState()+" "+record.get(i).getReason()+" "+record.get(i).getSetNum()+" "+record.get(i).getStrSetDate()+" "+record.get(i).getStrTimeSet() );

		}
		
	}
	@Override
	public void updateRecordList(List<SettingRecordVO> record) throws SQLException, ParseException {
		for(int i=0;i<record.size();i++) {
			session.update("SettingRecord-Mapper.updateRecordList",record.get(i));
		}
	}
	@Override
	public List<SettingRecordVO> selectRecordListByALLHwCode(String hwCode) throws SQLException {
		List<SettingRecordVO> srList = session.selectList("SettingRecord-Mapper.selectRecordListByALLHwCode",hwCode);
		return srList;
	}

}
