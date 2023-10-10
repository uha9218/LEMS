package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/envdata")
public class EnvdataController {
	
	@GetMapping("/main")
	public String main() throws Exception{
		String url="/envdata/traffic";
		return url;
	}
	
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
	@GetMapping("/sun")
	public String sun()throws Exception{
		String url = "/envdata/sun";
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
