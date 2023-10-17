package com.spring.service;

import com.spring.dao.StatDAO;
import com.spring.dto.StatVO;

public class StatServiceImpl implements StatService{

	private StatDAO dao;
	public void setStatDAO(StatDAO dao) {
		this.dao= dao;
	}
	
	@Override
	public StatVO getStat(String StatNum) throws Exception {
		StatVO stat = dao.selectStat(StatNum);
		return stat;
	}

}
