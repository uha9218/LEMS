package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.command.SearchListCommand;
import com.spring.dto.BrVO;

public interface BrDAO {

	List<BrVO> selectSearchBrList(SearchListCommand command) throws SQLException;
	
	int selectSearchBrListCount(SearchListCommand command) throws SQLException;
	
	BrVO selectBrByBrNum (int brNum) throws SQLException;
	
	void insertBr(BrVO br) throws SQLException;
	
	void updateBr(BrVO br) throws SQLException;
	
	void deleteBr(int brNum) throws  SQLException;
	
	int selectBrSeqNext() throws SQLException;
	
	
}
