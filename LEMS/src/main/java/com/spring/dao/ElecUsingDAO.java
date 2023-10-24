package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.dto.ElecUsingVO;

public interface ElecUsingDAO {
	List<ElecUsingVO> selectRecentElecUsingList() throws SQLException;
	List<ElecUsingVO> selectRecentElecUsingListByHwCode(String hwCode) throws SQLException;
	void insertElecUsingList(List<ElecUsingVO> elecList) throws SQLException;
	void updateElecUsingList(List<ElecUsingVO> elecList) throws SQLException;
}
