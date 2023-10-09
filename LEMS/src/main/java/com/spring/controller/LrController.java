package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lr")
public class LrController {

	@GetMapping("/list")
	public String lr()throws Exception{
		String url = "/lr/list";
		return url;
	}
	
}
