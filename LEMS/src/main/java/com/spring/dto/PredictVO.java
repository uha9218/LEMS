package com.spring.dto;

import java.util.Date;

public class PredictVO {

	private String predNum;		//전력소비량 예측번호
	private String predUse;		//예측전력량
	private Date predDate;		//예측전력날짜
	private String hwCode;		//구간코드
	
	public String getPredNum() {
		return predNum;
	}
	public void setPredNum(String predNum) {
		this.predNum = predNum;
	}
	public String getPredUse() {
		return predUse;
	}
	public void setPredUse(String predUse) {
		this.predUse = predUse;
	}
	public Date getPredDate() {
		return predDate;
	}
	public void setPredDate(Date predDate) {
		this.predDate = predDate;
	}
	public String getHwCode() {
		return hwCode;
	}
	public void setHwCode(String hwCode) {
		this.hwCode = hwCode;
	}
	
	
}
