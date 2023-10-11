package com.spring.dto;

import java.util.Date;

public class TrafficVO {

	private String trafficNum; //교통정보번호
	private Date trafficDate; //교통량집계일시
	private String occupancy; //차량점유율
	private String speedAvg; //평균속도
	private String trafficVlm; //단위시간교통량
	private String hwSecCode; //구간코드
	public String getTrafficNum() {
		return trafficNum;
	}
	public void setTrafficNum(String trafficNum) {
		this.trafficNum = trafficNum;
	}
	public Date getTrafficDate() {
		return trafficDate;
	}
	public void setTrafficDate(Date trafficDate) {
		this.trafficDate = trafficDate;
	}
	public String getOccupancy() {
		return occupancy;
	}
	public void setOccupancy(String occupancy) {
		this.occupancy = occupancy;
	}
	public String getSpeedAvg() {
		return speedAvg;
	}
	public void setSpeedAvg(String speedAvg) {
		this.speedAvg = speedAvg;
	}
	public String getTrafficVlm() {
		return trafficVlm;
	}
	public void setTrafficVlm(String trafficVlm) {
		this.trafficVlm = trafficVlm;
	}
	public String getHwSecCode() {
		return hwSecCode;
	}
	public void setHwSecCode(String hwSecCode) {
		this.hwSecCode = hwSecCode;
	}
}
