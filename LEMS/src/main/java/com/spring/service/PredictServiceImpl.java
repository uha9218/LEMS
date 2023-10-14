package com.spring.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.PredictDAO;
import com.spring.dto.PredictVO;

public class PredictServiceImpl implements PredictService{

	private PredictDAO predictDAO;
	public void setPredictDAO(PredictDAO predictDAO) {
		this.predictDAO = predictDAO;
	}
	
	@Override
	public Map<String, Object> getPredictList(SearchListCommand command) throws Exception {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<PredictVO> predictList = predictDAO.selectSearchPredictList(command);
		dataMap.put("predictList", predictList);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCommand(command);
		pageMaker.setTotalCount(predictDAO.selectSearchPredictListCount(command));
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public PredictVO getPredict(String prednum) throws SQLException {

		PredictVO predict = predictDAO.selectPredictBypredNum(prednum);
		return predict;
	}

}
