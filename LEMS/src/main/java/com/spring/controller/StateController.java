package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.dto.MenuVO;
import com.spring.service.MenuService;

@Controller
@RequestMapping("/state")
public class StateController {
	   
	@GetMapping("/main")
	   public String main() throws Exception{
	      String url="/state/main";	      
	   	  return url;
	   }
  }




