package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.command.SearchListCommand;
import com.spring.dto.LightVO;

public class LightDAOImpl implements LightDAO{

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<LightVO> selectSearchLightList(SearchListCommand command) throws Exception {
		int offset = command.getStartRowNum();
		int limit = command.getPerPageNum();
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<LightVO> lightList = sqlSession.selectList("Light-Mapper.selectsearchLightList", command, rowBounds);
		return lightList;
	}

	@Override
	public int selectSearchLightListCount(SearchListCommand command) throws Exception {
		int count=0;
		count=sqlSession.selectOne("Light-Mapper.selectSearchLightListCount", command);
		return count;
	}

	@Override
	public LightVO selectLightByLnum(String lnum) throws SQLException {
		LightVO lightList=sqlSession.selectOne("Light-Mapper.selectLightByLnum", lnum);
		return lightList;
	}

	@Override
	public LightVO selectLightByLstate(String lstate) throws SQLException {
		LightVO lightList1=sqlSession.selectOne("Light-Mapper.selectLightByLstate", lstate);
		return lightList1;
	}

}
