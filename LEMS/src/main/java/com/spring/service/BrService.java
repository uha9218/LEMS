package com.spring.service;

import java.sql.SQLException;
import java.util.Map;

import com.spring.command.SearchListCommand;
import com.spring.dto.BrVO;

public interface BrService {
	
	Map<String,Object> getBrList(SearchListCommand command)throws SQLException;
	
	BrVO getBr(String brNum)throws SQLException;
	
	void regist(BrVO br) throws SQLException, Exception;
	
	void modify(BrVO br) throws SQLException, Exception;
	
	void remove(String brNum) throws SQLException;
	
}
