package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.command.SearchListCommand;
import com.spring.dto.AdminVO;

public interface AdminDAO {

	// 검색결과일반 리스트
	List<AdminVO> selectSearchAdminList(SearchListCommand command) throws Exception;

	// 검색 결과의 전체 리스트 개수
	int selectSearchAdminListCount(SearchListCommand command) throws SQLException;

	// 회원정보 조회
	AdminVO selectAdminById(String id) throws SQLException;

	AdminVO selectAdminByPicture(String picture) throws SQLException;

	// 회원 추가
	public void insertAdmin(AdminVO admin) throws SQLException;

	// 회원 수정
	public void updateAdmin(AdminVO admin) throws SQLException;

	// 회원정보 삭제
	void deleteAdmin(String id) throws SQLException;
}
