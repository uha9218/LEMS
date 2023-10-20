package com.spring.service;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.spring.dao.ElecUsingDAO;
import com.spring.dao.LightDAO;
import com.spring.dao.RecommandDAO;
import com.spring.dao.SettingRecordDAO;
import com.spring.dto.ElecUsingVO;
import com.spring.dto.LightVO;
import com.spring.dto.RecommandVO;
import com.spring.dto.SettingRecordVO;

public class SettingRecordServiceImpl implements SettingRecordService{

	private SettingRecordDAO set;
	public void setSettingRecordDAO(SettingRecordDAO set) {
		this.set = set;
	}
	
	private ElecUsingDAO elec;
	public void setElecUsingDAO(ElecUsingDAO elec) {
		this.elec = elec;
	}
	
	private LightDAO light;
	public void setLightDAO(LightDAO light) {
		this.light = light;
	}
	
	private RecommandDAO rec;
	public void setRecommandDAO(RecommandDAO rec) {
		this.rec = rec;
	}
	@Override
	public void saveSettingTable(List<SettingRecordVO> record) throws SQLException, ParseException {
		 List<RecommandVO> recList = rec.selectRecentRecommandList();
		 List<SettingRecordVO> adminList = set.selectAdminRecordList();
		 List<LightVO> lightList = new ArrayList<LightVO>();
		 List<ElecUsingVO> elecList = new ArrayList<ElecUsingVO>();

		 LocalDateTime now = LocalDateTime.now();
		 SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmm");
		 
		for(int i=0;i<record.size();i++) {
			String setNum = record.get(i).getHwCode()+now.format(DateTimeFormatter.ofPattern("yyyyMMddHHmm"));
			Date setDate =  formatter.parse(now.format(DateTimeFormatter.ofPattern("yyyyMMddHHmm")));
			
			//light 정보 수정
			lightList.add(new LightVO());
			lightList.get(i).setHwCode(record.get(i).getHwCode());
			
			//elecUse 정보 수정
			elecList.add(new ElecUsingVO());
			elecList.get(i).setHwCode(record.get(i).getHwCode());
			elecList.get(i).setElecuseNum(record.get(i).getSetNum());
			elecList.get(i).setElecAltDate(record.get(i).getSetDate());
			String elecSub=(record.get(i).getSetDate()+"").substring(0,12);
			
			record.get(i).setSetNum(setNum);
			if(record.get(i).getReason()=="sys") {
				//시스템 설정 변동 안됨
				if(recList.get(i).getRecState()==record.get(i).getLightState()) {
					record.get(i).setReason("sys");
					record.get(i).setSetDate(setDate);
					
					elecList.get(i).setElecUse("1");
					
				}else {
					//시스템 설정을 관리자가 변경
					record.get(i).setReason("admin");
					record.get(i).setSetDate(setDate);
					
					//light 정보 수정
					lightList.get(i).setlState(record.get(i).getLightState());
					elecList.get(i).setElecUse(elecSub+" "+record.get(i).getLightState());
				}
			}else {
				if(adminList.size()>0) {
					for(int j=0;j<adminList.size();j++) {
						//admin 설정 변동 안됨
						if(record.get(i).getHwCode()==adminList.get(j).getHwCode()) {
							record.get(i).setSetDate(adminList.get(j).getSetDate());
							elecList.get(i).setElecUse("1");
						}
						else {	//admin 설정 변동
							elecList.get(i).setElecUse(elecSub+" "+record.get(i).getLightState());
						}
					}
				}
				record.get(i).setReason("admin");
				
				//light 정보 수정
				lightList.get(i).setlState(record.get(i).getLightState());
			}
			String tmpDate = now.format(DateTimeFormatter.ofPattern("yyyyMMddHHmm"));
			String timeSet=tmpDate.substring(0,11)+"0";
			record.get(i).setTimeSet(formatter.parse(timeSet));
			
			//elecUse 정보 수정
			elecList.get(i).setElecuseDate(record.get(i).getTimeSet());
			elec.updateElecUsingList(elecList);
			
		}
		 
		set.insertRecordList(record);
	}

	@Override
	public void updateSettingTable(List<RecommandVO> recommand) throws SQLException, ParseException {
		//설정 기록에 넣을 vo 작성
		List<SettingRecordVO> adminList = set.selectAdminRecordList();
		List<SettingRecordVO> record = new ArrayList<SettingRecordVO>();
		List<LightVO> lightList = new ArrayList<LightVO>();
		List<ElecUsingVO> elecList = new ArrayList<ElecUsingVO>();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmm");
		SimpleDateFormat formatter2 = new SimpleDateFormat("yyyy/MM/dd HH:mm");

		if(recommand.size()>0) {
			for(int i=0;i<recommand.size();i++) {
				record.add(new SettingRecordVO());
				record.get(i).setHwCode(recommand.get(i).getHwCode());
				record.get(i).setSetNum(record.get(i).getHwCode()+formatter.format(recommand.get(i).getRecDate()));
				Date timeSet = formatter2.parse(formatter2.format(recommand.get(i).getRecDate()));
				record.get(i).setTimeSet(timeSet);
				
				//관리자 설정 추가
				if(adminList.size()>0) {
					for(int j=0;j<adminList.size();j++) {
						if(record.get(i).getHwCode()==adminList.get(j).getHwCode()) {
							record.get(i).setLightState(adminList.get(i).getLightState());
							record.get(i).setReason("admin");
							record.get(i).setSetDate(adminList.get(i).getSetDate());
						}
						else {
							record.get(i).setLightState(recommand.get(i).getRecState());
							record.get(i).setReason("sys");
							record.get(i).setSetDate(recommand.get(i).getRecDate());
						}
					}
				}
				//light 정보 수정
				lightList.add(new LightVO());
				lightList.get(i).setHwCode(record.get(i).getHwCode());
				lightList.get(i).setlState(record.get(i).getLightState());
				
				//elecUse 정보 추가
				elecList.add(new ElecUsingVO());
				elecList.get(i).setHwCode(record.get(i).getHwCode());
				elecList.get(i).setElecuseNum(record.get(i).getSetNum());
				elecList.get(i).setElecuseDate(record.get(i).getSetDate());
				if(record.get(i).getLightState()==1) {elecList.get(i).setElecUse("10");}
				else elecList.get(i).setElecUse("0");
				elec.insertElecUsingList(elecList);
			}
			try {
				light.updateLight(lightList);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		
		
	}
	
	@Override
	public List<SettingRecordVO> getRecentRecord() throws SQLException {
		List<SettingRecordVO> setList = set.selectRecentRecordList();
		return setList;
	}

	@Override
	public List<SettingRecordVO> getRecordByTime(Date timeSet) throws SQLException {
		List<SettingRecordVO> setList = set.selectRecordListByTimeSet(timeSet);
		return setList;
	}

	@Override
	public List<SettingRecordVO> getRecordByHwcode(String HwCode) throws SQLException {
		List<SettingRecordVO> setList = set.selectRecordListByHwcode(HwCode);
		return setList;
	}



}
