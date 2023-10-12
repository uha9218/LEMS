package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.AdminVO;

public class AdminDAOImpl implements AdminDAO{
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<AdminVO> selectAdminList() throws SQLException {
		List<AdminVO> adminList = session.selectList("Admin-Mapper.selectAdminList"); 
		return adminList;
	}

	@Override
	public int selectSearchAdminListCount() throws SQLException {
		int count = session.selectOne("Admin-Mapper.selectSearchAdminListCount");
		return count;
	}

	@Override
	public AdminVO selectAdminByAdminNum(int adminNum) throws SQLException {
		AdminVO admin = session.selectOne("Admin-Mapper.selectAdminByAdminNum",adminNum);
		return admin;
	}

	@Override
	public void insertAdmin(AdminVO admin) throws SQLException {
		session.update("Admin-Mapper.insertAdmin",admin);
	}

	@Override
	public void updateAdmin(AdminVO admin) throws SQLException {
		session.update("Admin-Mapper.updateAdmin",admin);
	}

	@Override
	public void deleteAdmin(int adminNum) throws SQLException {
		session.update("Admin-Mapper.deleteAdmin",adminNum);
	}

	@Override
	public int selectAdminNumSeqNext() throws SQLException {
		int seqNum = session.selectOne("Admin-Mapper.selectAdminNumSeqNext");
		return seqNum;
	}

}
