package com.spring.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.dto.AdminVO;
import com.spring.dto.MenuVO;
import com.spring.exception.InvalidPasswordException;
import com.spring.exception.NotFoundIdException;
import com.spring.service.AdminService;
import com.spring.service.MenuService;

@Controller
public class CommonController {
   
   @Autowired
   private MenuService menuService;
   
   @Autowired
   private AdminService adminService;
   
   @GetMapping("/main")
   public void main() {}
   
   @GetMapping("/index")
   public String index(@RequestParam(defaultValue = "M000000") String mCode,
                   HttpSession session,
                   Model model) throws Exception{
      String url="/common/indexPage";
      
      List<MenuVO> menuList = menuService.getMainMenuList();
      MenuVO menu = menuService.getMenuByMcode(mCode);
      
      String id = (String)session.getAttribute("loginUser");
      AdminVO admin = adminService.getAdminDetail(id);
      
      model.addAttribute("menuList", menuList);
      model.addAttribute("menu", menu);
      model.addAttribute("loginUser",admin);
      
      return url;
   }
   
   @GetMapping("/subMenu")
   @ResponseBody
   public List<MenuVO> subMenuToJSON(String mCode) throws Exception {
      List<MenuVO> menuList = menuService.getSubMenuList(mCode);
      return menuList;
   }
   @GetMapping("/common/login")
   public String login(@ModelAttribute("retUrl") String retUrl,
                       String error,
                       HttpServletResponse response,
                       Model model) {
      String url="/common/login";
      
      if(error!=null && error.equals("-1")) {
         response.setStatus(302);
         model.addAttribute("message","로그인은 필수입니다.");
      }
      
      return url;
   }
   
   @PostMapping("/common/login")
   public String login(String id, String pwd,
                  String retUrl, 
                  HttpSession session,
                  Model model) 
                                          throws Exception {
      String url = "redirect:/index.do";
      
      if(retUrl!=null && !retUrl.isEmpty()) url="redirect:"+retUrl;
      
      try {
         adminService.login(id, pwd);
         session.setAttribute("loginUser",id);
         //session.setMaxInactiveInterval(6*60);
      } catch (NotFoundIdException | InvalidPasswordException e) {
         url = "/common/login_fail";
         model.addAttribute("retUrl",retUrl);

      } catch (SQLException e) {
         e.printStackTrace();
         throw e;
      }
      return url;
   }
   
   @GetMapping("/common/logout")
   public String logout(HttpSession session) {
      String url = "redirect:/";
      session.invalidate();
      return url;
   }
   
   
  }




