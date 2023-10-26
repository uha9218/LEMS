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
	public void saveSettingTable(List<SettingRecordVO> record) throws Exception {
		 List<RecommandVO> recList = rec.selectRecentRecommandList();
		 List<SettingRecordVO> adminList = set.selectAdminRecordList();
		 List<LightVO> lightList = new ArrayList<LightVO>();
		 List<ElecUsingVO> elecList = elec.selectRecentElecUsingList();
		 List<SettingRecordVO> srList=set.selectRecentRecordList();

		 LocalDateTime now = LocalDateTime.now();
		 SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		 SimpleDateFormat formatter2 = new SimpleDateFormat("yyyy/MM/dd");
		 String strSetDate =  now.format(DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss"));
		 String today =  now.format(DateTimeFormatter.ofPattern("yyyy/MM/dd"));
		 
		for(int i=0;i<record.size();i++) {
			String setNum = now.format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss"))+record.get(i).getHwCode();
			record.get(i).setSetNum(setNum);

			//light 정보 수정
			lightList.add(new LightVO());
			lightList.get(i).setHwCode(record.get(i).getHwCode());
			
			//elecUse 정보 수정
			elecList.get(i).setHwCode(record.get(i).getHwCode());
			elecList.get(i).setElecAltDate(strSetDate);
			String elecSub=(strSetDate.substring(15,16));
			
			
			System.out.println("JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"+record.get(i).getHwCode()+" "+record.get(i).getLightState()+" "+record.get(i).getReason()+" "+record.get(i).getSetNum());
			
			
			
			//이상 가로등인 경우
			if(light.selectLightByHwCode(record.get(i).getHwCode()).get(0).getlState()==10) {	//on->off
				lightList.get(i).setlState(10);
				elecList.get(i).setElecUse("0");
				String tmpDate = now.format(DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm"));
				String timeSet=tmpDate.substring(0,tmpDate.length() - 1)+"0";
				record.get(i).setStrTimeSet(timeSet);
				record.get(i).setReason(srList.get(i).getReason());
				record.get(i).setStrSetDate(formatter.format(recList.get(i).getRecDate()));

				System.out.print(record.get(i).getReason());
				System.out.println(record.get(i).getStrSetDate());
				System.out.println(record.get(i).getStrTimeSet());
				record.get(i).setStrSetDate(formatter.format(recList.get(i).getRecDate()));

				System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAA"+record.get(i).getHwCode()+" "+record.get(i).getLightState()+" "+record.get(i).getReason()+" "+record.get(i).getSetNum());
			}else if(light.selectLightByHwCode(record.get(i).getHwCode()).get(0).getlState()==11) { //off->on
				lightList.get(i).setlState(11);
				elecList.get(i).setElecUse("10");
				String tmpDate = now.format(DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm"));
				String timeSet=tmpDate.substring(0,tmpDate.length() - 1)+"0";
				record.get(i).setStrTimeSet(timeSet);
				record.get(i).setReason(srList.get(i).getReason());
				System.out.println("BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"+record.get(i).getHwCode()+" "+record.get(i).getLightState()+" "+record.get(i).getReason()+" "+record.get(i).getSetNum());

			}else {
				if(record.get(i).getReason().equals("sys")) {
					//시스템 설정 변동 안됨
					if(recList.get(i).getRecState()==record.get(i).getLightState()) {
						record.get(i).setReason("sys");
						record.get(i).setStrSetDate(formatter.format(recList.get(i).getRecDate()));
						System.out.println("CCCCCCCCCCCCCCCCCCCCCCCCCCC"+record.get(i).getHwCode()+" "+record.get(i).getLightState()+" "+record.get(i).getReason()+" "+record.get(i).getSetNum());

	
						elecList.get(i).setElecUse("a");
						
					}else {
						//시스템 설정을 관리자가 변경
						record.get(i).setReason("admin");
						record.get(i).setStrSetDate(strSetDate);
		
						//light 정보 수정
						lightList.get(i).setlState(record.get(i).getLightState());
						
						//elecUse 정보 수정
						elecList.get(i).setElecUse(elecSub+" "+record.get(i).getLightState());
						System.out.println("DDDDDDDDDDDDDDDDDDDDDDDDDDDDD"+record.get(i).getHwCode()+" "+record.get(i).getLightState()+" "+record.get(i).getReason()+" "+record.get(i).getSetNum());

					}
				}else {
					if(adminList.size()>0) {
						for(int j=0;j<adminList.size();j++) {
							if(record.get(i).getHwCode().equals(adminList.get(j).getHwCode())) {
								//admin 설정 변동 안됨
								if(record.get(i).getLightState()==adminList.get(j).getLightState()){
									record.get(i).setStrSetDate(formatter.format(adminList.get(j).getSetDate()));
									elecList.get(i).setElecUse("a");
									System.out.println("EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE"+record.get(i).getHwCode()+" "+record.get(i).getLightState()+" "+record.get(i).getReason()+" "+record.get(i).getSetNum());

								}
								else {	//admin 설정 변동
									record.get(i).setStrSetDate(strSetDate);
									elecList.get(i).setElecUse(elecSub+" "+record.get(i).getLightState());
									System.out.println("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"+record.get(i).getHwCode()+" "+record.get(i).getLightState()+" "+record.get(i).getReason()+" "+record.get(i).getSetNum());

	
								}
							}
						}
					}
					record.get(i).setReason("admin");
				}
				String tmpDate = now.format(DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm"));
				String timeSet=tmpDate.substring(0,tmpDate.length() - 1)+"0";
				record.get(i).setStrTimeSet(timeSet);
				lightList.get(i).setlState(record.get(i).getLightState());
	//			
				//elecUse 정보 수정
				elecList.get(i).setElecAltDate(tmpDate);
			}
			System.out.println("#########################################################################");
			System.out.println(record.get(i).getHwCode()+" "+record.get(i).getLightState()+" "+record.get(i).getReason()+" "+record.get(i).getSetNum()+" "+record.get(i).getStrSetDate()+" "+record.get(i).getStrTimeSet() );
			System.out.println(lightList.get(i).getlNum()+" "+lightList.get(i).getHwCode()+" "+lightList.get(i).getlState());
			System.out.println(elecList.get(i).getElecUse()+" "+elecList.get(i).getElecuseDate()+" "+elecList.get(i).getElecuseNum()+" "+elecList.get(i).getHwCode());

		}
		elec.updateElecUsingList(elecList);
		light.updateLight(lightList);
		set.insertRecordList(record);
	}

	
	
	@Override
	public List<SettingRecordVO> getRecentRecord() throws SQLException {
		List<SettingRecordVO> setList = set.selectRecentRecordList();
		String[] LNum = {"131","5540","1160","979","96","71","553","10000","8","984","4950","999","649","2899"};
/*
		for(int i=0;i<LNum.length;i++) {
			LightVO li = light.selectLightByLnum(LNum[i]);
			System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^LNum"+LNum[i]+" "+li.getlState());
			if(li.getlState()==2) {
				setList.get(i).setStrState("고장");
				setList.get(i).setLightState(2);
				System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"+setList.get(i).getLightState()+" "+setList.get(i).getHwCode()+" "+li.getlState());
			}
		}*/
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
	@Override
	public List<SettingRecordVO> getRecordByALLHwCode(String hwCode) throws SQLException {
		List<SettingRecordVO> setList = set.selectRecordListByALLHwCode(hwCode);
		return setList;
	}



}
