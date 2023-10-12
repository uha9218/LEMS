package com.spring.dto;

public class ElecuseVO {

	private String elecuseNum;	//전력소비량번호
	private String elecUse;		//구간전력량
	private String elecuseDate;	//구간전력량날짜
	private String hwCode;		//구간코드
	
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
	public String getElecuseDate() {
		return elecuseDate;
	}
	public void setElecuseDate(String elecuseDate) {
		this.elecuseDate = elecuseDate;
	}
	public String getHwCode() {
		return hwCode;
	}
	public void setHwCode(String hwCode) {
		this.hwCode = hwCode;
	}
	
	
}
