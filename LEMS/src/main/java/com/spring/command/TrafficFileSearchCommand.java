package com.spring.command;

public class TrafficFileSearchCommand {

	
	private String fromDate;
	private String toDate;
	
	public String getFromDate() {
		return fromDate;
	}
	public void setFromDate(String fromDate) {
		this.fromDate = fromDate;
	}
	public String getToDate() {
		return toDate;
	}
	public void setToDate(String toDate) {
		this.toDate = toDate;
	}

	@Override
	public String toString() {
		return "TrafficFileSeachCommand [fromDate=" + fromDate + ", toDate=" + toDate + "]";
	}
	
	
}
