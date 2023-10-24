package com.spring.service;

import java.util.List;

import com.spring.dao.ElecUsingDAO;
import com.spring.dto.ElecUsingVO;

public class ElecUsingServiceImpl implements ElecUsingService{
	
	private ElecUsingDAO elecDAO;
	public void setElecUsingDAO(ElecUsingDAO elecDAO) {
		this.elecDAO = elecDAO;
	}
	
	@Override
	public List<ElecUsingVO> getRecentElecByHwCode(String hwCode) throws Exception {
		List<ElecUsingVO> elec = elecDAO.selectRecentElecUsingListByHwCode(hwCode);
		return elec;
	}

}
