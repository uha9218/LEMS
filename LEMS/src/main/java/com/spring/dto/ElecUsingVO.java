package com.spring.dto;

import java.util.Date;

public class ElecUsingVO {

	private String elecuseNum;	//전력소비량번호
	private String elecUse;		//구간전력량
	private Date elecuseDate;	//구간전력량날짜
	private String hwCode;		//구간코드
	private Date elecAltDate;
	
	public String getElecuseNum() {
		return elecuseNum;
	}
	public void setElecuseNum(String elecuseNum) {
		this.elecuseNum = elecuseNum;
	}
	public String getElecUse() {
		return elecUse;
	}
	public void setElecUse(String elecUse) {
		this.elecUse = elecUse;
	}
	public Date getElecuseDate() {
		return elecuseDate;
	}
	public void setElecuseDate(Date elecuseDate) {
		this.elecuseDate = elecuseDate;
	}
	public String getHwCode() {
		return hwCode;
	}
	public void setHwCode(String hwCode) {
		this.hwCode = hwCode;
	}
	public Date getElecAltDate() {
		return elecAltDate;
	}
	public void setElecAltDate(Date elecAltDate) {
		this.elecAltDate = elecAltDate;
	}
	
	
	
}
