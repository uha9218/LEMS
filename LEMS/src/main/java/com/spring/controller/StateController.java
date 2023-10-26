package com.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.dto.ElecUsingVO;
import com.spring.dto.SettingRecordVO;
import com.spring.dto.SunlightVO;
import com.spring.dto.TrafficVO;
import com.spring.service.AlarmService;
import com.spring.service.ElecUsingService;
import com.spring.service.SettingRecordService;
import com.spring.service.SunlightService;
import com.spring.service.TrafficService;

@Controller
@RequestMapping("/state")
public class StateController {


	@Autowired
	private SettingRecordService settingRecordService;

	@Autowired
	private SunlightService sunlightService;

	@Autowired
	private TrafficService trafficService;

	@Autowired
	private ElecUsingService elecService;
	
	@Autowired
	private AlarmService alarmService;
	
	@GetMapping("/main")
	public String main(String hwCode,Model model) throws Exception {
		String url = "/state/main";
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		
		List<ElecUsingVO> elecList = elecService.getRecentElecByHwCode(hwCode);
		String alarm =  alarmService.getAlarm();
		
		dataMap.put("elecList", elecList);
		dataMap.put("alarm", alarm);
		
		model.addAllAttributes(dataMap);
		
		return url;
	}

	@GetMapping("/sun")
	@ResponseBody
	public SunlightVO sunInfo(String hwCode) throws Exception {
		SunlightVO sunlight = null;

		sunlight = sunlightService.getSunlightByHwCode(hwCode);

		return sunlight;
	}

	@GetMapping("/traffic")
	@ResponseBody
	public TrafficVO traffInfo(String hwCode) throws Exception {
		TrafficVO traffic = null;

		traffic = trafficService.getTrafficByHwCode(hwCode);

		return traffic;
	}

	@GetMapping("/elec")
	@ResponseBody
	public List<ElecUsingVO> elecInfo(String hwCode) throws Exception {
		List<ElecUsingVO> elec = null;

		elec = elecService.getRecentElecByHwCode(hwCode);

		return elec;
	}

	@GetMapping("/set")
	@ResponseBody
	public List<SettingRecordVO> setInfo(String hwCode) throws Exception {
		List<SettingRecordVO> set = null;

		set = settingRecordService.getRecordByALLHwCode(hwCode);

		return set;
	}
}
