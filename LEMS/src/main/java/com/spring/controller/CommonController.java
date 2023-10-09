package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.dto.MenuVO;
import com.spring.service.MenuService;

@Controller
public class CommonController {
   
   @Autowired
   private MenuService menuService;
   
   @GetMapping("/main")
   public String main() {
	   String url="/main";
	   return url;
   }
   
   @GetMapping("/index")
   public String index(@RequestParam(defaultValue = "M000000") String mCode,
                   HttpSession session,
                   Model model) throws Exception{
      String url="/common/indexPage";
      
      List<MenuVO> menuList = menuService.getMainMenuList();
      MenuVO menu = menuService.getMenuByMcode(mCode);
      
      model.addAttribute("menuList", menuList);
      model.addAttribute("menu", menu);
      
      return url;
   }
   
   @GetMapping("/subMenu")
   @ResponseBody
   public List<MenuVO> subMenuToJSON(String mCode) throws Exception {
      List<MenuVO> menuList = menuService.getSubMenuList(mCode);
      return menuList;
   }
  }




