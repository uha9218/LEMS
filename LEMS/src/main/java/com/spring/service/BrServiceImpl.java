package com.spring.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.BrDAO;
import com.spring.dto.BrVO;

public class BrServiceImpl implements BrService {

	private BrDAO brDAO;
	public void setBrDAO(BrDAO brDAO) {
		this.brDAO = brDAO;
	}
	
	@Override
	public void regist(BrVO br) throws SQLException {
		String brNum = brDAO.selectBrSeqNext()+"";
		br.setBrNum(brNum);
		brDAO.insertBr(br);
		
	}

	@Override
	public void modify(BrVO br) throws SQLException {
		brDAO.updateBr(br);
		
	}

	@Override
	public void remove(int brNum) throws SQLException {
		brDAO.deleteBr(brNum);
		
	}

	@Override
	public Map<String, Object> getBrList(SearchListCommand command) throws SQLException {
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<BrVO> brList = brDAO.selectSearchBrList(command);
		
		int totalCount = brDAO.selectSearchBrListCount(command);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCommand(command);
		pageMaker.setTotalCount(totalCount);
		
		dataMap.put("brList", brList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public BrVO getBr(int brNum) throws SQLException {
		BrVO br = brDAO.selectBrByBrNum(brNum);
		
		return br;
	}

}
