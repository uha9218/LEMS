package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.dto.SunlightVO;
import com.spring.dto.TrafficVO;
import com.spring.service.SunlightService;
import com.spring.service.TrafficService;

@Controller
@RequestMapping("/state")
public class StateController {

	@Autowired
	private SunlightService sunlightService;

	@Autowired
	private TrafficService trafficService;

	@GetMapping("/main")
	public String main() throws Exception {
		String url = "/state/main";

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
}
