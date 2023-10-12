package com.spring.dto;

import java.util.Date;

public class AlarmVO {

	private String alarmNum;	//알림번호
	private Date AlarmDate;		//알림날짜
	private String elecError;	//전력오차
	private String hwCode;		//구간코드
	
	public String getAlarmNum() {
		return alarmNum;
	}
	public void setAlarmNum(String alarmNum) {
		this.alarmNum = alarmNum;
	}
	public Date getAlarmDate() {
		return AlarmDate;
	}
	public void setAlarmDate(Date alarmDate) {
		AlarmDate = alarmDate;
	}
	public String getElecError() {
		return elecError;
	}
	public void setElecError(String elecError) {
		this.elecError = elecError;
	}
	public String getHwCode() {
		return hwCode;
	}
	public void setHwCode(String hwCode) {
		this.hwCode = hwCode;
	}
	
}
