package com.spring.dto;

public class TrafficVO {

	private String traffNum;	//교통번호
	private String traffDate;	//교통량집계일시
	private String speedAvg;	//통행속도
	private String traff;		//교통량
	private String hwCode;		//구간코드
	
	public String getTraffNum() {
		return traffNum;
	}
	public void setTraffNum(String traffNum) {
		this.traffNum = traffNum;
	}
	public String getTraffDate() {
		return traffDate;
	}
	public void setTraffDate(String traffDate) {
		this.traffDate = traffDate;
	}
	public String getSpeedAvg() {
		return speedAvg;
	}
	public void setSpeedAvg(String speedAvg) {
		this.speedAvg = speedAvg;
	}
	public String getTraff() {
		return traff;
	}
	public void setTraff(String traff) {
		this.traff = traff;
	}
	public String getHwCode() {
		return hwCode;
	}
	public void setHwCode(String hwCode) {
		this.hwCode = hwCode;
	}
	
	
}
