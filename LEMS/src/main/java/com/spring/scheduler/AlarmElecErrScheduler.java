package com.spring.scheduler;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import com.spring.dao.AlarmDAO;
import com.spring.dao.ElecUsingDAO;
import com.spring.dao.SettingRecordDAO;
import com.spring.dto.AlarmVO;
import com.spring.dto.ElecUsingVO;
import com.spring.dto.SettingRecordVO;

public class AlarmElecErrScheduler {
	
	private ElecUsingDAO elec;
	public void setElecUsingDAO(ElecUsingDAO elec) {
		this.elec = elec;
	}
	private SettingRecordDAO set;
	public void setSettingRecordDAO(SettingRecordDAO set) {
		this.set = set;
	}
	private AlarmDAO al;
	public void setAlarmDAO(AlarmDAO al) {
		this.al = al;
	}
	public void alarmSchduler() throws Exception{
		System.out.println("************************************알람 스케줄러 시작****************************************");

		List<ElecUsingVO> elecList = elec.selectRecentElecUsingList();
		List<SettingRecordVO> sr = set.selectRecentRecordList();
		double[] elecAmount= {22.33,62.53,178.89,98.49,67.67,59.18,47.34,21.21,141.14,210.15,49.35,84.42,79.50,121.04};
		List<AlarmVO> alarm = new ArrayList<AlarmVO>();
		int alarmCount=0;
		LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm");
        DateTimeFormatter formatter1 = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");


		for(int i=0;i<sr.size();i++){
			if(sr.get(i).getLightState()==2) {
				System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"+sr.get(i).getHwCode());
				break;
			}else {
				double preUse = sr.get(i).getLightState()*10*elecAmount[i];
				double realUse=Double.parseDouble(elecList.get(i).getElecUse());
				//신뢰구간 95퍼 미만
				if(Math.abs(realUse-preUse)>elecAmount[i]*10*0.05) {
					alarm.add(new AlarmVO());
					alarm.get(alarmCount).setAlarmNum(sr.get(i).getHwCode()+now.format(formatter1));
					alarm.get(alarmCount).setAlarmStrDate(now.format(formatter));
					alarm.get(alarmCount).setHwCode(sr.get(i).getHwCode());
					alarm.get(alarmCount).setElecError(Math.abs(realUse-preUse)+"");
					alarmCount++;
					
				}
			}
		}
		al.insertRecordList(alarm);

	}
}

