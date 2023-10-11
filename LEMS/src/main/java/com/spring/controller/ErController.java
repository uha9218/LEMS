package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/er")
public class ErController {

	@GetMapping("/list")
	public String er()throws Exception{
		String url = "/er/list";
		return url;
	}
	
}
