package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/br")
public class BrController {
	@GetMapping("/main")
	public String main() throws Exception{
		String url="/br/list";
		return url;
	}
	
	@GetMapping("/list")
	public String list() throws Exception{
		String url="/br/list";         
		return url;
	}
   @GetMapping("/regist")
   public String regist() throws Exception{
      String url="/br/regist";         
      return url;
   }
   @GetMapping("/modify")
   public String modify() throws Exception{
      String url="/br/modify";         
      return url;
   }
   @GetMapping("/delete")
   public String delete() throws Exception{
      String url="/br/delete";         
      return url;
   }

}
