
package com.spring.dao;

import java.sql.SQLException;
import java.time.LocalTime;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.command.SearchListCommand;
import com.spring.dto.AdminVO;

public class AdminDAOImpl implements AdminDAO{
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<AdminVO> selectAdminList(SearchListCommand command) throws SQLException {
		
		//pagenation
		int offset = command.getStartRowNum();
		int limit = command.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<AdminVO> adminList = session.selectList("Admin-Mapper.selectAdminList",command,rowBounds); 
		return adminList;
	}

	@Override
	public int selectSearchAdminListCount(SearchListCommand command) throws SQLException {
		int count = session.selectOne("Admin-Mapper.selectSearchAdminListCount",command);
		return count;
	}

	@Override
	public AdminVO selectAdminByAdminNum(String adminNum) throws SQLException {
		AdminVO admin = session.selectOne("Admin-Mapper.selectAdminByAdminNum",adminNum);
		return admin;
	}

	@Override
	public AdminVO selectAdminByPicture(String picture) throws SQLException {
		AdminVO admin = null;
		admin = session.selectOne("Admin-Mapper.selectAdminByPicture", picture);
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
	public void deleteAdmin(String adminNum) throws SQLException {
		session.update("Admin-Mapper.deleteAdmin",adminNum);
	}

	@Override
	public int selectAdminNumSeqNext() throws SQLException {
		int seqNum = session.selectOne("Admin-Mapper.selectAdminNumSeqNext");
		return seqNum;
	}

}

