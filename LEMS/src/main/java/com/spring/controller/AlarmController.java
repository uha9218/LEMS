package com.spring.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.service.AlarmService;

@Controller
@RequestMapping("/alarm")
public class AlarmController {
	
	@Autowired
	private AlarmService alarm;

	@GetMapping("/list")
	public String er(Model model)throws Exception{
		String url = "/er/list";
		
		Map<String,Object> dataMap = alarm.getAlarmList();
		model.addAllAttributes(dataMap);
		
		return url;
	}
	
}
