package com.spring.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.SunlightDAO;
import com.spring.dto.SunlightVO;

public class SunlightServiceImpl implements SunlightService{

	private SunlightDAO sunlightDAO;
	public void setSunlightDAO(SunlightDAO sunlightDAO) {
		this.sunlightDAO = sunlightDAO;
	}
	
	@Override
	public Map<String, Object> getSunlightList(SearchListCommand command) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String ,Object>();
		
		List<SunlightVO> sunlightList = sunlightDAO.selectSearchSunlightList(command);
		dataMap.put("sunlightList", sunlightList);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCommand(command);
		pageMaker.setTotalCount(sunlightDAO.selectSearchSunlightListCount(command));
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public SunlightVO getSunlight(String sunnum) throws SQLException {

		SunlightVO sunlight = sunlightDAO.selectSunlightBySunnum(sunnum);
		
		return sunlight;
	}

}
