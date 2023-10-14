package com.spring.service;

import java.sql.SQLException;
import java.util.Map;

import com.spring.command.SearchListCommand;
import com.spring.dto.AdminVO;
import com.spring.exception.InvalidPasswordException;
import com.spring.exception.NotFoundIdException;

public interface AdminService {

	public void login(String id, String pwd) throws NotFoundIdException, InvalidPasswordException, SQLException;

	// 회원리스트
	public Map<String, Object> getAdminList(SearchListCommand command) throws Exception;

	// 회원상세
	public AdminVO getAdmin(String id) throws Exception;

	// 회원등록
	public void regist(AdminVO admin) throws Exception;

	// 회원수정
	public void modify(AdminVO admin) throws Exception;

	// 회원탈퇴
	public void remove(String id) throws Exception;
}
