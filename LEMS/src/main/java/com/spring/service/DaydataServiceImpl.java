package com.spring.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.DaydataDAO;
import com.spring.dto.DaydataVO;

public class DaydataServiceImpl implements DaydataService{

	private DaydataDAO daydataDAO;
	public void setDaydataDAO(DaydataDAO daydataDAO) {
		this.daydataDAO = daydataDAO;
	}
	
	@Override
	public Map<String, Object> getDaydataList(SearchListCommand command) throws Exception {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		Map<String, String> staticMap = new HashMap<String, String>();
		
		List<DaydataVO> daydataList = daydataDAO.selectSearchDaydataList(command);
		
		float trasum=0; 
		float spsum=0;
		float tramin=0;
		float tramax=0;
		float spmin=0;
		float spmax=0;
		float tradevi=0;
		float spdevi=0;
		
		if(daydataList.size()>0) { 
	
			tramin=Float.parseFloat(daydataList.get(0).getDayTrf());
			tramax=Float.parseFloat(daydataList.get(0).getDayTrf());
			spmin=Float.parseFloat(daydataList.get(0).getDaySpd());
			spmax=Float.parseFloat(daydataList.get(0).getDaySpd());
		
			for (int i=0;i<daydataList.size();i++) {
				//SpeedAvg
				float satmp = Float.parseFloat(daydataList.get(i).getDaySpd());
				daydataList.get(i).setDaySpd(String.format("%.1f", satmp));
				
				//occ
				//float occtmp = Float.parseFloat(daydataList.get(i).getDayOcc());
				//daydataList.get(i).setDayOcc(String.format("%.1f", occtmp));
				
				//총합
				trasum+= Float.parseFloat(daydataList.get(i).getDayTrf());
				spsum+=Float.parseFloat(daydataList.get(i).getDaySpd());
				
				//min,max
				tramin=(tramin>Float.parseFloat(daydataList.get(i).getDayTrf())) ? Float.parseFloat(daydataList.get(i).getDayTrf()) : tramin; 
				tramax=(tramax<Float.parseFloat(daydataList.get(i).getDayTrf())) ? Float.parseFloat(daydataList.get(i).getDayTrf()) : tramax; 
				spmin=(spmin>Float.parseFloat(daydataList.get(i).getDaySpd())) ? Float.parseFloat(daydataList.get(i).getDaySpd()) : spmin; 
				spmax=(spmax<Float.parseFloat(daydataList.get(i).getDaySpd())) ? Float.parseFloat(daydataList.get(i).getDaySpd()) : spmax; 
			}
		}
		staticMap.put("traMin", String.format("%.1f", tramin));
		staticMap.put("traMax", String.format("%.1f", tramax));
		staticMap.put("spMin",  String.format("%.1f", spmin));
		staticMap.put("spMax",  String.format("%.1f", spmax));
		

		//staticCommand.setTraMin(tramintmp+"");
		//평균
		staticMap.put("traAvg", String.format("%.1f", (trasum/daydataList.size())));
		staticMap.put("spAvg", String.format("%.1f", (spsum/daydataList.size())));
		
		//표준편차
		for(int i=0; i<daydataList.size();i++) {
			tradevi+=Math.pow(((Float.parseFloat(daydataList.get(i).getDayTrf()))-(trasum/daydataList.size())),2);
			spdevi+=Math.pow(((Float.parseFloat(daydataList.get(i).getDaySpd()))-(spsum/daydataList.size())), 2);
		}
		
		staticMap.put("traDevi", String.format("%.1f",Math.sqrt((tradevi/daydataList.size()))));
		staticMap.put("spDevi",  String.format("%.1f",Math.sqrt((spdevi/daydataList.size()))));
		
		dataMap.put("staticMap", staticMap);
		dataMap.put("daydataList", daydataList);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCommand(command);
		pageMaker.setTotalCount(daydataDAO.selectSearchDaydataListCount(command));
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public DaydataVO getDaydata(String dayNum) throws SQLException {
		DaydataVO daydata = daydataDAO.selectDaydataBydaynum(dayNum);
		return daydata;
	}

}
