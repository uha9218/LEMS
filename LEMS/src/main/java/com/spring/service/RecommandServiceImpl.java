package com.spring.service;

import java.util.List;

import com.spring.dao.RecommandDAO;
import com.spring.dto.RecommandVO;

public class RecommandServiceImpl implements RecommandService{

	private RecommandDAO dao;
	public void setRecommandDAO(RecommandDAO dao) {
		this.dao = dao;
	}
	@Override
	public List<RecommandVO> getRecentRecommand() throws Exception {
		List<RecommandVO> recList = dao.selectRecentRecommandList();
		return recList;
	}

}
