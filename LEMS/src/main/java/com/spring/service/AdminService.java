package com.spring.service;

import java.sql.SQLException;
import java.util.Map;

import com.spring.command.SearchListCommand;
import com.spring.dto.AdminVO;

public interface AdminService {
	
	
	//목록 조회
	Map<String, Object> getAdminList(SearchListCommand command) throws SQLException;
	
	//상세 보기
	AdminVO getAdminDetail(String AdminNum) throws SQLException;
	
	//등록
	void registAdmin(AdminVO admin) throws SQLException;
	
	//수정
	void modifyAdmin(AdminVO admin) throws SQLException;
	
	//삭제
	void deleteAdmin(String AdminNum) throws SQLException;
}
