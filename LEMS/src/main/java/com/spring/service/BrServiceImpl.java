package com.spring.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.BrDAO;
import com.spring.dao.LightDAO;
import com.spring.dao.SettingRecordDAO;
import com.spring.dto.BrVO;
import com.spring.dto.LightVO;
import com.spring.dto.SettingRecordVO;

public class BrServiceImpl implements BrService {

	private BrDAO brDAO;
	public void setBrDAO(BrDAO brDAO) {
		this.brDAO = brDAO;
	}
	private LightDAO lightDAO;
	public void setLightDAO(LightDAO lightDAO) {
		this.lightDAO=lightDAO; 
	}
	private SettingRecordDAO srDAO;
	public void setSettingRecordDAO(SettingRecordDAO srDAO) {
		this.srDAO=srDAO;
	}
	
	
	@Override
	public void regist(BrVO br) throws Exception {
		String brNum = brDAO.selectBrSeqNext()+"";
		br.setBrNum(brNum);
		brDAO.insertBr(br);
		
		if(br.getBrState()==0||br.getBrState()==1) {
			//light 상태변경
			List<LightVO> light = lightDAO.selectLightByHwCode(br.getHwCode());
			for(int i=0;i<light.size();i++) {
				light.get(i).setlState(2);
			}
			if(light.size()>0) {
				lightDAO.updateLight(light);
			}
			//관리자 설정 초기화
			List<SettingRecordVO> sr = srDAO.selectRecentRecordList();
			for(int i=0;i<sr.size();i++) {

				if(sr.get(i).getHwCode().equals(br.getHwCode())) {
					sr.get(i).setReason("sys");
					sr.get(i).setLightState(0);

				}
			}
	
			
		}
	}

	@Override
	public void modify(BrVO br) throws Exception {
		brDAO.updateBr(br);
		
		//light 상태변경
		if(br.getBrState()==2) {
			List<LightVO> light = lightDAO.selectLightByHwCode(br.getHwCode());
			for(int i=0;i<light.size();i++) {
				light.get(i).setlState(0);
			}
			if(light.size()>0) {
				lightDAO.updateLight(light);
			}
		}
		
	}

	@Override
	public void remove(String brNum) throws SQLException {
		brDAO.deleteBr(brNum);
		
	}

	@Override
	public Map<String, Object> getBrList(SearchListCommand command) throws SQLException {
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		command.setPerPageNum(10);
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
	public BrVO getBr(String brNum) throws SQLException {
		BrVO br = brDAO.selectBrByBrNum(brNum);
		
		return br;
	}

}
