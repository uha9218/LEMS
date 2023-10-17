
package com.spring.dto;

import java.util.Date;

public class SettingRecordVO {
	private String setNum;
	private Date setDate;
	private int lightState;
	private String reason;
	private Date timeSet;
	private String hwCode;
	private String strState;
	public String getSetNum() {
		return setNum;
	}
	public void setSetNum(String setNum) {
		this.setNum = setNum;
	}
	public Date getSetDate() {
		return setDate;
	}
	public void setSetDate(Date setDate) {
		this.setDate = setDate;
	}
	public int getLightState() {
		return lightState;
	}
	public void setLightState(int lightState) {
		this.lightState = lightState;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public Date getTimeSet() {
		return timeSet;
	}
	public void setTimeSet(Date timeSet) {
		this.timeSet = timeSet;
	}
	public String getHwCode() {
		return hwCode;
	}
	public void setHwCode(String hwCode) {
		this.hwCode = hwCode;
	}
	public String getStrState() {
		return strState;
	}
	public void setStrState(String strState) {
		this.strState = strState;
	}
	
		
}

