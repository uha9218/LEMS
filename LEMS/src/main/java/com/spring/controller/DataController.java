package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/data")
public class DataController {
	@GetMapping("/main")
	   public String index() throws Exception{
	      String url="/light/list";	      
	      return url;
	   }
	
	@GetMapping("/light")
	   public String light() throws Exception{
	      String url="/light/list";	      
	      return url;
	   }
	
	@GetMapping("/traffic")
	   public String traffic() throws Exception{
	      String url="/traffic/list";	      
	      return url;
	   }
	
	@GetMapping("/acci")
	   public String acci() throws Exception{
	      String url="/acci/list";	      
	      return url;
	   }
	
	@GetMapping("/sun")
	   public String sun() throws Exception{
	      String url="/sun/list";	      
	      return url;
	   }
}
