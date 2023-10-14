package com.spring.service;

import java.sql.SQLException;
import java.util.Map;

import com.spring.command.SearchListCommand;
import com.spring.dto.LightVO;

public interface LightService {

	public Map<String, Object> getLightList(SearchListCommand command) throws Exception;
	
	public LightVO getLight(String lnum) throws SQLException;
	
	public LightVO getLight1(String lstate) throws SQLException;

}
