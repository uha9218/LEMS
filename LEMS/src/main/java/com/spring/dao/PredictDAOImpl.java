package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.command.SearchListCommand;
import com.spring.dto.PredictVO;

public class PredictDAOImpl implements PredictDAO{

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<PredictVO> selectSearchPredictList(SearchListCommand command) throws Exception {
		int offset = command.getStartRowNum();
		int limit = command.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<PredictVO> predictList = 
				sqlSession.selectList("Predict-Mapper.selectSearchPredictList", command, rowBounds);
		
		return predictList;
	}

	@Override
	public int selectSearchPredictListCount(SearchListCommand command) throws Exception {
		int count = sqlSession.selectOne("Predict-Mapper.selectSearchPredictListCount", command);
		return count;
	}
	
	@Override
	public PredictVO selectPredictBypredNum(String prednum) throws SQLException {
		PredictVO predictList=sqlSession.selectOne("Predict-Mapper.selectPredictBypredNum", prednum);
		return predictList;
	}
	
}
