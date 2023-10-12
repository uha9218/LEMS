package com.spring.dto;

import java.util.Date;

public class BrVO {

	private String brNum;		//고장번호
	private String brContent;	//고장내용
	private Date brDate;		//고장날짜
	private int brState;		//처리여부
	private String lNum;		//가로등번호
	
	public String getBrNum() {
		return brNum;
	}
	public void setBrNum(String brNum) {
		this.brNum = brNum;
	}
	public String getBrContent() {
		return brContent;
	}
	public void setBrContent(String brContent) {
		this.brContent = brContent;
	}
	public Date getBrDate() {
		return brDate;
	}
	public void setBrDate(Date brDate) {
		this.brDate = brDate;
	}
	public int getBrState() {
		return brState;
	}
	public void setBrState(int brState) {
		this.brState = brState;
	}
	public String getlNum() {
		return lNum;
	}
	public void setlNum(String lNum) {
		this.lNum = lNum;
	}
	
	
}
