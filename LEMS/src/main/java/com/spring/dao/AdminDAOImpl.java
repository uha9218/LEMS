package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.command.SearchListCommand;
import com.spring.dto.AdminVO;

public class AdminDAOImpl implements AdminDAO {

	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<AdminVO> selectSearchAdminList(SearchListCommand command) throws Exception {
		int offset = command.getStartRowNum();
		int limit = command.getPerPageNum();

		RowBounds rowBounds = new RowBounds(offset, limit);

		List<AdminVO> adminList = sqlSession.selectList("Admin-Mapper.selectSearchAdminList", command, rowBounds);
		return adminList;
	}

	@Override
	public int selectSearchAdminListCount(SearchListCommand command) throws SQLException {
		int count = 0;
		count = sqlSession.selectOne("Admin-Mapper.selectSearchAdminListCount", command);
		return count;
	}

	@Override
	public AdminVO selectAdminById(String id) throws SQLException {
		AdminVO admin = sqlSession.selectOne("Admin-Mapper.selectAdminById", id);
		return admin;
	}

	@Override
	public AdminVO selectAdminByPicture(String picture) throws SQLException {
		AdminVO admin = null;
		admin = sqlSession.selectOne("Admin-Mapper.selectAdminByPicture", picture);
		return admin;
	}

	@Override
	public void insertAdmin(AdminVO admin) throws SQLException {
		sqlSession.update("Admin-Mapper.insertAdmin", admin);
	}

	@Override
	public void updateAdmin(AdminVO admin) throws SQLException {
		sqlSession.update("Admin-Mapper.updateAdmin", admin);

	}

	@Override
	public void deleteAdmin(String id) throws SQLException {
		sqlSession.update("Admin-Mapper.deleteAdmin", id);

	}

}
