package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.dto.AdminVO;

public interface AdminDAO {
	List<AdminVO> selectAdminList() throws SQLException;
	int selectSearchAdminListCount() throws SQLException;
	AdminVO selectAdminByAdminNum(int adminNum) throws SQLException;
	void insertAdmin(AdminVO admin) throws SQLException;
	void updateAdmin(AdminVO admin) throws SQLException;
	void deleteAdmin(int adminNum) throws SQLException;
	int selectAdminNumSeqNext() throws SQLException;
}
