package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/envdata")
public class TrafficController {

	@GetMapping("/traffic")
	public String traffic()throws Exception{
		String url = "/envdata/traffic";
		return url;
	}
	@GetMapping("/trafficDetail")
	public String trafficDetail()throws Exception{
		String url = "/envdata/trafficDetail";
		return url;
	}
}
