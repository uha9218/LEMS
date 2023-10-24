package com.spring.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.command.SearchListCommand;
import com.spring.dto.BrVO;
import com.spring.service.BrService;


@Controller
@RequestMapping("/br")
public class BrController {
	
	@Autowired
	private BrService service;
	
	@GetMapping("/list")
	public String list(SearchListCommand command, Model model) throws Exception{
		String url="/br/list";
		Map<String,Object> dataMap = service.getBrList(command);
	    model.addAllAttributes(dataMap);
		return url;
	}
	
	@GetMapping("/detail")
	public String detail(String brNum, Model model) throws Exception{
		String url = "/br/detail";
		
		BrVO br = service.getBr(brNum);
		model.addAttribute("br",br);
		
		return url;
	}
	@GetMapping("/registForm")
	   public String registForm() throws Exception{
	      String url="/br/regist";
	      return url;
	}
	
	@PostMapping("/regist")
   public String regist(BrVO br) throws Exception{
      String url="/br/registSuccess";         
      service.regist(br);
      return url;
   }
   @GetMapping("/modifyForm")
   public String modifyForm(String brNum, Model model) throws Exception{
      String url="/br/modify";
      
      BrVO br = service.getBr(brNum); 
      model.addAttribute("br", br);
      
      return url;
   }
   @PostMapping("/modify")
   public String modify(BrVO br) throws Exception{
      String url="redirect:/br/detail.do?brNum="+br.getBrNum();
      service.modify(br);
      return url;
   }
   @GetMapping("/delete")
   public String delete(String brNum) throws Exception{
      String url="/br/delete";
      service.remove(brNum);
      
      return url;
   }

}
