package com.spring.scheduler;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import com.spring.dao.AlarmDAO;
import com.spring.dao.ElecUsingDAO;
import com.spring.dao.LightDAO;
import com.spring.dao.RecommandDAO;
import com.spring.dao.SettingRecordDAO;
import com.spring.dto.AlarmVO;
import com.spring.dto.ElecUsingVO;
import com.spring.dto.LightVO;
import com.spring.dto.RecommandVO;
import com.spring.dto.SettingRecordVO;

public class RecommandTableScheduler {

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

	public void updateSettingTable() throws Exception {
		//설정 기록에 넣을 vo 작성
		System.out.println("*****************************************************************************추천 설정표 스케줄러 시작*************************************************************************");
		
		List<SettingRecordVO> adminList = set.selectAdminRecordList();
		List<SettingRecordVO> record = new ArrayList<SettingRecordVO>();
		List<LightVO> lightList = new ArrayList<LightVO>();
		List<ElecUsingVO> elecList = new ArrayList<ElecUsingVO>();
		List<RecommandVO> recommand = rec.selectRecentRecommandList();
		List<AlarmVO> alarmList = new ArrayList<AlarmVO>();
		String[] LNum = {"131","5540","1160","979","96","71","553","10000","8","984","4950","999","649","2899"};
		
		LocalDateTime now = LocalDateTime.now();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
		SimpleDateFormat formatter2 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		SimpleDateFormat formatter3 = new SimpleDateFormat("yyyy/MM/dd");
		SimpleDateFormat formatter4 = new SimpleDateFormat("yyyy/MM/dd HH:mm");
		int alarmCount=0;

		if(now.format(DateTimeFormatter.ofPattern("HH:mm")).equals("12:00")) {	//12시에 관리자 설정 전체 초기화
			adminList.clear();
		}
		
		if(recommand.size()>0) {
			for(int i=0;i<recommand.size();i++) {
				record.add(new SettingRecordVO());
				lightList.add(new LightVO());
				elecList.add(new ElecUsingVO());
				record.get(i).setHwCode(recommand.get(i).getHwCode());
				record.get(i).setSetNum(formatter.format(recommand.get(i).getRecDate())+record.get(i).getHwCode());
				String strSetDate =  formatter2.format(recommand.get(i).getRecDate());
				String timeSet=strSetDate.substring(0,strSetDate.length() - 4)+"0";
				record.get(i).setStrTimeSet(timeSet);
				lightList.get(i).setHwCode(record.get(i).getHwCode());
				//이상가로등인 경우
				if(light.selectLightByLnum(LNum[i]).getlState()==10) {	//on->off
					lightList.get(i).setlState(10);
					elecList.get(i).setElecUse("0");
					record.get(i).setReason("sys");
					record.get(i).setStrSetDate(formatter2.format(recommand.get(i).getRecDate()));
					System.out.println("1111111111111111111111111111111111111111111111111111"+LNum[i]+" "+light.selectLightByLnum(LNum[i]).getlState());
				}else if(light.selectLightByLnum(LNum[i]).getlState()==11) { //off->on
					lightList.get(i).setlState(11);
					elecList.get(i).setElecUse("10");
					record.get(i).setReason("sys");
					record.get(i).setStrSetDate(formatter2.format(recommand.get(i).getRecDate()));
					System.out.println("22222222222222222222222222222222222222222222222222222"+LNum[i]+" "+light.selectLightByLnum(LNum[i]).getlState());
				}else if(light.selectLightByLnum(LNum[i]).getlState()==2){	//고장
					elecList.get(i).setElecUse("0");
					lightList.get(i).setlState(2);
					record.get(i).setReason("sys");
					record.get(i).setStrSetDate(formatter2.format(recommand.get(i).getRecDate()));
					System.out.println("33333333333333333333333333333333333333333333333333333"+LNum[i]+" "+light.selectLightByLnum(LNum[i]).getlState());
				}else {	
			
					
					//관리자 설정 추가
					if(adminList.size()>0) {
						for(int j=0;j<adminList.size();j++) {
							System.out.println(record.get(i).getHwCode()+" "+adminList.get(j).getHwCode());
							if(record.get(i).getHwCode().equals(adminList.get(j).getHwCode())) {
								record.get(i).setLightState(adminList.get(j).getLightState());
								record.get(i).setReason("admin");
								record.get(i).setStrSetDate(adminList.get(j).getStrSetDate());
								lightList.get(i).setlState(adminList.get(j).getLightState());
								elecList.get(i).setElecUse(adminList.get(j).getLightState()*10+"");
								System.out.println("44444444444444444444444444444444444444444444444444"+record.get(i).getHwCode());
							}
						}
					}
					if(record.get(i).getReason()==null) {
						record.get(i).setLightState(recommand.get(i).getRecState());
						record.get(i).setReason("sys");
						record.get(i).setStrSetDate(formatter2.format(recommand.get(i).getRecDate()));
						lightList.get(i).setHwCode(record.get(i).getHwCode());
						lightList.get(i).setlState(record.get(i).getLightState());
						if(record.get(i).getLightState()==1) {elecList.get(i).setElecUse("10");}
						else elecList.get(i).setElecUse("0");
						System.out.println("5555555555555555555555555555555555555555555555555555"+record.get(i).getHwCode());
					}
					
				}
				//light 정보 수정 & elecUse 정보 추가
				
				System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"+recommand.get(i).getHwCode()+light.selectLightByHwCode(recommand.get(i).getHwCode()).get(0).getlState());
				
				elecList.get(i).setHwCode(record.get(i).getHwCode());
				elecList.get(i).setElecuseNum(record.get(i).getSetNum());
				elecList.get(i).setElecuseDate(timeSet);	
			
				System.out.println("#########################################################################");
				System.out.println(record.get(i).getHwCode()+" "+record.get(i).getLightState()+" "+record.get(i).getReason()+" "+record.get(i).getSetNum()+" "+record.get(i).getStrSetDate()+" "+record.get(i).getStrTimeSet() );
				System.out.println(elecList.get(i).getElecUse()+" "+elecList.get(i).getElecuseDate()+" "+elecList.get(i).getElecuseNum()+" "+elecList.get(i).getHwCode());
				
			}
		elec.insertElecUsingList(elecList);
		set.insertRecordList(record);
		light.updateLight(lightList);
	//	if(alarmCount>0) {al.insertRecordList(alarmList);}
		
		}else {	
			System.out.println("추천 설정표가 없습니다.");
		}
		
	}
}
