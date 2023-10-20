package com.spring.command;

import java.util.List;

import com.spring.dto.SettingRecordVO;

public class SetRecordCommand {

	private List<SettingRecordVO> data;

	public List<SettingRecordVO> getData() {
		return data;
	}

	public void setData(List<SettingRecordVO> data) {
		this.data = data;
	}
	
	
}
