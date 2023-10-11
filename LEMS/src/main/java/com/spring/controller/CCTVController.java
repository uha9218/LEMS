package com.spring.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.service.CCTVService;

@Controller
@RequestMapping("/cctv")
public class CCTVController {
   
   @Autowired
   private CCTVService service;
   
   @GetMapping("/main")
      public String cctv(Model model) throws Exception{
         String url="/cctv/cctv";
         
         Map<String,Object> cctvUrlopen= new HashMap<String,Object>();
         
         cctvUrlopen.put("cctvUrlopen", service.cctv());
       
        model.addAllAttributes(cctvUrlopen);
       
         return url;
      }
   
   @GetMapping("/cctvDetail")
   public String cctvDetail() throws Exception{
      String url="/cctv/cctvDetail";         
      return url;
   }

}