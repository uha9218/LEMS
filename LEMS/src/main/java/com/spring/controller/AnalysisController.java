package com.spring.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.command.SearchListCommand;
import com.spring.service.HighwayService;

@Controller
@RequestMapping("/analysis")
public class AnalysisController {
	
	@GetMapping("/main")
	   public String main()throws Exception{
	      String url = "/analysis/predict";
	      return url;
	}
   @GetMapping("/predict")
   public String predict(SearchListCommand command, Model model)throws Exception{
	  String url = "/analysis/predict";

      return url;
   }
   @GetMapping("/compare")
   public String compare()throws Exception{
      String url = "/analysis/compare";
      return url;
   }   
      
}