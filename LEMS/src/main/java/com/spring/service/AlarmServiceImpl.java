package com.spring.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.ErrCommand;
import com.spring.dao.AlarmDAO;
import com.spring.dao.ElecUsingDAO;
import com.spring.dao.SettingRecordDAO;
import com.spring.dto.AlarmVO;
import com.spring.dto.ElecUsingVO;
import com.spring.dto.SettingRecordVO;

public class AlarmServiceImpl implements AlarmService{
	
	private AlarmDAO dao;
	public void setAlarmDAO(AlarmDAO dao) {
		this.dao = dao; 
	}
	private ElecUsingDAO elec;
	public void setElecUsingDAO(ElecUsingDAO elec) {
		this.elec = elec;
	}
	private SettingRecordDAO set;
	public void setSettingRecordDAO(SettingRecordDAO set) {
		this.set = set;
	}
	@Override
	public AlarmVO getAlarm() throws SQLException {
		AlarmVO alarm = dao.selectRecentAlarm();
		return alarm;
	}

	@Override
	public Map<String,Object> getAlarmList() throws SQLException {
		List<AlarmVO> alarm = dao.selectAlarmList();
		List<ElecUsingVO> elecList = elec.selectRecentElecUsingList();
		List<SettingRecordVO> sr = set.selectRecentRecordList();
		List<ErrCommand> ErrCommandList = new ArrayList<ErrCommand>();
		List<String> realUseList = new ArrayList<String>();
		
		double[] elecAmount= {22.33,62.53,178.89,98.49,67.67,59.18,47.34,21.21,141.14,210.15,49.35,84.42,79.50,121.04};
		for(int i=0;i<sr.size();i++) {
			double preUse = sr.get(i).getLightState()*10*elecAmount[i];
			double realUse=Double.parseDouble(elecList.get(i).getElecUse());
			
			ErrCommandList.add(new ErrCommand());
			ErrCommandList.get(i).setHwCode(sr.get(i).getHwCode());
			ErrCommandList.get(i).setPreUse(preUse+"");
			ErrCommandList.get(i).setRealUse(realUse+"");
			System.out.println(sr.get(i).getHwCode()+" "+preUse+" "+realUse);
		}
		
		Map<String,Object> dataMap=new HashMap<String,Object>();
		dataMap.put("alarmList", alarm);
		dataMap.put("ErrCommandList", ErrCommandList);
		
		return dataMap;
	}

}
