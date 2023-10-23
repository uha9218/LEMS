package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.ElecUsingVO;

public class ElecUsingDAOImpl implements ElecUsingDAO{

	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}
	
	double[] elecAmount= {22.33,62.53,178.89,98.49,67.67,59.18,47.34,21.21,141.14,210.15,49.35,84.42,79.50,121.04};

	@Override
	public List<ElecUsingVO> selectRecentElecUsingList() throws SQLException {
		List<ElecUsingVO> elec = session.selectList("ElecUsing-Mapper.selectRecentElecUsingList");
		return elec;
	}
	@Override
	public void insertElecUsingList(List<ElecUsingVO> elecList) throws SQLException {
		for(int i=0;i<elecList.size();i++) {
			double tmp=  Double.parseDouble(elecList.get(i).getElecUse()); 
			elecList.get(i).setElecUse((tmp*elecAmount[i])+"");
			session.update("ElecUsing-Mapper.insertElecUsingList",elecList.get(i));
		}
	}

	@Override
	public void updateElecUsingList(List<ElecUsingVO> elecList) throws SQLException {
		List<ElecUsingVO> recent = selectRecentElecUsingList();
		if(elecList.size()>0) {
			for(int i=0;i<elecList.size();i++) {
				if(elecList.get(i).getElecUse().equals("a")) {	//이전 설정과 변함이 없으면 전력량 유지
					elecList.get(i).setElecUse(recent.get(i).getElecUse());
				} else {	//이전설정과 변동시 전력사용량 수정
					if(elecList.get(i).getElecUse().endsWith("1")) {	//off->on
						int tmp =10-Integer.parseInt((elecList.get(i).getElecUse().substring(0,1)));
						elecList.get(i).setElecUse((tmp*elecAmount[i])+"");
					} else{	//on->off
						int tmp = Integer.parseInt((elecList.get(i).getElecUse().substring(0,1)));
						elecList.get(i).setElecUse((tmp*elecAmount[i])+"");
					}
					
				}
				session.update("ElecUsing-Mapper.updateElecUsingList",elecList.get(i));
			}
		}
	}

	
}
