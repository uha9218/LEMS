package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.dto.RecommandVO;

public interface RecommandDAO {
	List<RecommandVO> selectRecommandList() throws SQLException;
	List<RecommandVO> selectRecentRecommandList() throws SQLException;
}
