package com.spring.dto;

import java.util.Date;

public class RecordVO {
	private String recNum;
	private Date recDate;
	private int lightState;
	private String reason;
	private Date timeSet;
	private String hwCode;
	public String getRecNum() {
		return recNum;
	}
	public void setRecNum(String recNum) {
		this.recNum = recNum;
	}
	public Date getRecDate() {
		return recDate;
	}
	public void setRecDate(Date recDate) {
		this.recDate = recDate;
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
	
	
}
