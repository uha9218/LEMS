package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.command.SearchListCommand;
import com.spring.dto.TrafficVO;

public class TrafficDAOImpl implements TrafficDAO{

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<TrafficVO> selectsearchTrafficList(SearchListCommand command) throws Exception {
		int offset = command.getStartRowNum();
		int limit = command.getPerPageNum();
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<TrafficVO> trafficList = sqlSession.selectList("Traffic-Mapper.selectsearchTrafficList", command, rowBounds);
		return trafficList;
	}

	@Override
	public int selectSearchTrafficListCount(SearchListCommand command) throws Exception {
		int count = sqlSession.selectOne("Traffic-Mapper.selectSearchTrafficListCount", command);
		return count;
	}
	
	@Override
	public TrafficVO selectTrafficByTraffnum(String traffnum) throws SQLException {
		TrafficVO tarfficList=sqlSession.selectOne("Traffic-Mapper.selectTrafficByTraffnum", traffnum);
		return tarfficList;
	}

}
