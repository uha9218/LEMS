package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@GetMapping("/main")
    public String cctv() throws Exception{
       String url="/admin/list";         
       return url;
    }

   @GetMapping("/regist")
   public String regist() throws Exception{
      String url="/admin/regist";         
      return url;
   }
   @GetMapping("/modify")
   public String modify() throws Exception{
      String url="/admin/modify";         
      return url;
   }
   @GetMapping("/delete")
   public String delete() throws Exception{
      String url="/admin/delete";         
      return url;
   }
}
