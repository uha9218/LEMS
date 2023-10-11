package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/analysis")
public class AnalysisController {

	@GetMapping("/main")
	   public String main()throws Exception{
	      String url = "/analysis/predict";
	      return url;
	}
   @GetMapping("/predict")
   public String predict()throws Exception{
      String url = "/analysis/predict";
      return url;
   }
   @GetMapping("/compare")
   public String compare()throws Exception{
      String url = "/analysis/compare";
      return url;
   }   
      
}