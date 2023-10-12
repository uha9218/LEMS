package com.spring.dto;

import java.util.Date;

public class OnoffVO {

	private String onoffNum;	//예측번호
	private Date onoffDate;		//예측날짜
	private int onoffState;		//점등여부
	private String hwCode;		//구간코드
	private String statNum;		//추천근거번호
	
	public String getOnoffNum() {
		return onoffNum;
	}
	public void setOnoffNum(String onoffNum) {
		this.onoffNum = onoffNum;
	}
	public Date getOnoffDate() {
		return onoffDate;
	}
	public void setOnoffDate(Date onoffDate) {
		this.onoffDate = onoffDate;
	}
	public int getOnoffState() {
		return onoffState;
	}
	public void setOnoffState(int onoffState) {
		this.onoffState = onoffState;
	}
	public String getHwCode() {
		return hwCode;
	}
	public void setHwCode(String hwCode) {
		this.hwCode = hwCode;
	}
	public String getStatNum() {
		return statNum;
	}
	public void setStatNum(String statNum) {
		this.statNum = statNum;
	}
	
	
}
