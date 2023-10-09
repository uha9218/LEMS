package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/cctv")
public class CctvController {
   @GetMapping("/main")
      public String cctv() throws Exception{
         String url="/cctv/cctv";         
         return url;
      }
   @GetMapping("/cctvDetail")
   public String cctvDetail() throws Exception{
      String url="/cctv/cctvDetail";         
      return url;
   }
}