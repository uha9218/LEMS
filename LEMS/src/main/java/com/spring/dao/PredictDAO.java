package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.command.SearchListCommand;
import com.spring.dto.PredictVO;

public interface PredictDAO {
	
	List<PredictVO> selectSearchPredictList(SearchListCommand command) throws Exception;
	
	int selectSearchPredictListCount(SearchListCommand command) throws Exception;
	
	PredictVO selectPredictBypredNum(String prednum) throws SQLException;
}
