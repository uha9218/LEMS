package com.spring.dto;

import java.util.Date;

public class RecordVO {

	private String recNum;		//설정기록번호
	private Date recDate; 		//설정날짜
	private int lightState;		//점등여부
	private String reason;		//설정구분
	private Date timeSet;		//점등시간대
	private String hwCode;		//구간코드
	
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
