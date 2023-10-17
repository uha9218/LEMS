package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.command.SearchListCommand;
import com.spring.dto.BrVO;

public class BrDAOImpl implements BrDAO{

	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<BrVO> selectSearchBrList(SearchListCommand command) throws SQLException {

		int offset = command.getStartRowNum();
		int limit = command.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		List<BrVO> brList = session.selectList("Br-Mapper.selectSerchBrList", command, rowBounds);
		
		return brList;
	}
	
	@Override
	public BrVO selectBrByBrNum(int brNum) throws SQLException {
		BrVO br=session.selectOne("Br-Mapper.selectBrByBrNum", brNum);
		return br;
	}

	@Override
	public void insertBr(BrVO br) throws SQLException {
		session.update("Br-Mapper.insertBr", br);
		
	}

	@Override
	public void updateBr(BrVO br) throws SQLException {
		session.update("Br-Mapper.updateBr", br);
		
	}

	@Override
	public void deleteBr(int brNum) throws SQLException {
		session.update("Br-Mapper.deleteBr", brNum);
		
	}

	@Override
	public int selectBrSeqNext() throws SQLException {
		int seq_num=session.selectOne("Br-Mapper.selectBrSeqNext");
		
		return seq_num;
	}

	@Override
	public int selectSearchBrListCount(SearchListCommand command) throws SQLException {
		int count = session.selectOne("Br-Mapper.selectSearchBrListCount", command);
		return count;
	}


}
