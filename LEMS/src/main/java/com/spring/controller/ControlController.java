package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/control")
public class ControlController {
	@GetMapping("/main")
   public String main() throws Exception{
      String url="/control/recTable";	      
      return url;
   }
	@GetMapping("/setTableList")
	public String setTableList() throws Exception{	
		String url="/control/setTableList";
		return url;
	}
	@GetMapping("/basis")
	public String basis() throws Exception{	
		String url="/control/basis";
		return url;
	}
}
