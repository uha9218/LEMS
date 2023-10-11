package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/data")
public class DataController {
	@GetMapping("/main")
	   public String index() throws Exception{
	      String url="/data/light";	      
	      return url;
	   }
	
	@GetMapping("/light")
	   public String light() throws Exception{
	      String url="/data/light";	      
	      return url;
	   }
	
	@GetMapping("/traffic")
	   public String traffic() throws Exception{
	      String url="/data/traffic";	      
	      return url;
	   }
	
	@GetMapping("/acci")
	   public String acci() throws Exception{
	      String url="/data/acci";	      
	      return url;
	   }
	
	@GetMapping("/sun")
	   public String sun() throws Exception{
	      String url="/data/sun";	      
	      return url;
	   }
}
