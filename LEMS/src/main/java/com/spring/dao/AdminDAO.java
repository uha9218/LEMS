package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.command.SearchListCommand;
import com.spring.dto.AdminVO;

public interface AdminDAO {
	List<AdminVO> selectAdminList(SearchListCommand command) throws SQLException;
	int selectSearchAdminListCount(SearchListCommand command) throws SQLException;
	AdminVO selectAdminByAdminNum(String adminNum) throws SQLException;
	void insertAdmin(AdminVO admin) throws SQLException;
	void updateAdmin(AdminVO admin) throws SQLException;
	void deleteAdmin(String adminNum) throws SQLException;
	int selectAdminNumSeqNext() throws SQLException;
}
