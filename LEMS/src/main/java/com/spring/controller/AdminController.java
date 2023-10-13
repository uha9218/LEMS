package com.spring.controller;

import java.time.LocalTime;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.command.SearchListCommand;
import com.spring.dto.AdminVO;
import com.spring.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService service;
	
	@GetMapping("/main")
    public String list(SearchListCommand command, Model model) throws Exception{
       String url="/admin/list";
       
       Map<String,Object> dataMap = service.getAdminList(command);
       model.addAllAttributes(dataMap);
       
       return url;
    }

	@GetMapping("/detail")
	public String detail(String adminNum, Model model) throws Exception{
		String url = "/admin/detail";
		
		AdminVO admin = service.getAdminDetail(adminNum);
		model.addAttribute("admin",admin);
		
		return url;
	}
	
   @GetMapping("/registForm")
   public String registForm() throws Exception{
      String url="/admin/regist";
      return url;
   }
   
   @PostMapping("/regist")
   public String regist(AdminVO admin) throws Exception{
	   String url="/admin/registSuccess";
	   service.registAdmin(admin);
	   return url;
   }
   
   @GetMapping("/modifyForm")
   public String modifyForm(String adminNum, Model model) throws Exception{
      String url="/admin/modify";
      
      AdminVO admin = service.getAdminDetail(adminNum);
      
      model.addAttribute("admin", admin);
      
      return url;
   }
   
   @PostMapping("/modify")
   public String modify(AdminVO admin, Model model) throws Exception{
      String url="redirect:/admin/detail.do?adminNum="+admin.getAdminNum();  
      service.modifyAdmin(admin);
      
      return url;
   }
   
   @GetMapping("/delete")
   public String delete(String adminNum) throws Exception{
      String url="/admin/delete";
      service.deleteAdmin(adminNum);
      return url;
   }
}
