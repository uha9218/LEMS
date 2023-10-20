package com.spring.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.LightDAO;
import com.spring.dto.LightVO;

public class LightServiceImpl implements LightService{

	private LightDAO lightDAO;
	public void setLightDAO(LightDAO lightDAO) {
		this.lightDAO = lightDAO;
	}
	/*
	@Override
	public Map<String, Object> getLightList(SearchListCommand command) throws Exception {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<LightVO> lightList = lightDAO.selectSearchLightList(command);
		dataMap.put("lightList", lightList);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCommand(command);
		pageMaker.setTotalCount(lightDAO.selectSearchLightListCount(command));
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public LightVO getLight(String lnum) throws SQLException {
		
		LightVO light = lightDAO.selectLightByLnum(lnum);
		return light;
	}

	@Override
	public LightVO getLight1(String lstate) throws SQLException {

		LightVO light = lightDAO.selectLightByLstate(lstate);
		return light;
	}
	*/

}
