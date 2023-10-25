package com.spring.dao;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.StatVO;

public class StatDAOImpl implements StatDAO{

	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	@Override
	public StatVO selectStat() throws Exception {
		StatVO stat =session.selectOne("Stat-Mapper.selectStat"); 
		return stat;
	}
	
}
