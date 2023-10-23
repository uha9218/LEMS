
package com.spring.dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class SettingRecordVO {
	private String setNum;
	private Date setDate;
	private String strSetDate;
	private int lightState;
	private String reason;
	private Date timeSet;
	private String strTimeSet;
	private String hwCode;
	private String strState;
	
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	
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
	public String getStrSetDate() {
		if(this.strSetDate==null) {
			return formatter.format(this.setDate);}
		return strSetDate;
	}
	public void setStrSetDate(String strSetDate) {
		this.strSetDate = strSetDate;
	}
	public String getStrTimeSet() {
		if(this.strTimeSet==null) {
			return formatter.format(this.timeSet);}
		return strTimeSet;
	}
	public void setStrTimeSet(String strTimeSet) {
		this.strTimeSet = strTimeSet;
	}
	

}

