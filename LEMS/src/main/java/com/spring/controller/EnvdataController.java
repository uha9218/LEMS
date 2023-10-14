package com.spring.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.command.SearchListCommand;
import com.spring.service.SunlightService;
import com.spring.service.TrafficService;

@Controller
@RequestMapping("/envdata")
public class EnvdataController {
	
	@Autowired
	private TrafficService trafficService;
	
	@Autowired
	private SunlightService sunlightService;
	
	@GetMapping("/main")
	public String main() throws Exception{
		String url="/envdata/traffic";
		return url;
	}
	
	@GetMapping("/traffic")
	public String traffic(SearchListCommand command, Model model)throws Exception{
		
		Map<String, Object> dataMap = trafficService.getTrafficList(command);
		
		String url = "/envdata/traffic";
		
		model.addAllAttributes(dataMap);
		return url;
	}
	@GetMapping("/trafficDetail")
	public String trafficDetail()throws Exception{
		String url = "/envdata/trafficDetail";
		return url;
	}
	@GetMapping("/sun")
	public String sun(SearchListCommand command, Model model)throws Exception{
		String url = "/envdata/sun";
		
		Map<String, Object> dataMap = sunlightService.getSunlightList(command);
		
		model.addAllAttributes(dataMap);
		return url;
	}
	@GetMapping("/sunDetail")
	public String sunDetail()throws Exception{
		String url = "/envdata/sunDetail";
		return url;
	}
	@GetMapping("/sunVariation")
	public String sunVariation()throws Exception{
		String url = "/envdata/sunVariation";
		return url;
	}
}
