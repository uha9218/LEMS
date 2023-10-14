package com.spring.dto;

public class SunlightVO {

	private String sunNum;		//일조번호
	private String sunDate;		//날짜
	private String sunRise;		//일출시간
	private String sunSet;		//일몰시간
	private String fullLight;	//밤의길이
	private String hwCode;		//구간코드
	
	public String getSunNum() {
		return sunNum;
	}
	public void setSunNum(String sunNum) {
		this.sunNum = sunNum;
	}
	public String getSunDate() {
		return sunDate;
	}
	public void setSunDate(String sunDate) {
		this.sunDate = sunDate;
	}
	public String getSunRise() {
		return sunRise;
	}
	public void setSunRise(String sunRise) {
		this.sunRise = sunRise;
	}
	public String getSunSet() {
		return sunSet;
	}
	public void setSunSet(String sunSet) {
		this.sunSet = sunSet;
	}
	public String getFullLight() {
		return fullLight;
	}
	public void setFullLight(String fullLight) {
		this.fullLight = fullLight;
	}
	public String getHwCode() {
		return hwCode;
	}
	public void setHwCode(String hwCode) {
		this.hwCode = hwCode;
	}
	
}
