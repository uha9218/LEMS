package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.RecommandVO;

public class RecommandDAOImpl implements RecommandDAO{

	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<RecommandVO> selectRecommandList() throws SQLException {
		List<RecommandVO> recList = session.selectList("Recommand-Mapper.selectRecommandList");
		return recList;
	}

	@Override
	public List<RecommandVO> selectRecentRecommandList() throws SQLException {
		List<RecommandVO> recList = session.selectList("Recommand-Mapper.selectRecentRecommandList");
		
		for(int i=0;i<recList.size();i++) {
			if(recList.get(i).getRecState()==1) {recList.get(i).setStrState("on");}
			else recList.get(i).setStrState("off");
			recList.get(i).setPredUse(String.format("%.1f",Float.parseFloat(recList.get(i).getPredUse())));
		}
		
		return recList;
	}

}
