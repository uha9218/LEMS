package com.spring.service;

import java.sql.SQLException;
import java.util.Map;

import com.spring.command.SearchListCommand;
import com.spring.dto.PredictVO;

public interface PredictService {

	public Map<String, Object> getPredictList(SearchListCommand command) throws Exception;
	
	public PredictVO getPredict(String prednum) throws SQLException;
}
