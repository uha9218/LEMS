
package com.spring.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.josephoconnell.html.HTMLInputFilter;
import com.spring.command.AdminModifyCommand;
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
   
   @PostMapping(value = "/modify", produces = "text/plain;charset=utf-8")
   public String modify(AdminVO admin) throws Exception {
      
      String url = "redirect:/admin/detail.do?adminNum="+admin.getAdminNum();
      // DB 내용 수정
      service.modifyAdmin(admin);
      
      return url;
   }
   
   @GetMapping("/delete")
   public String delete(String adminNum) throws Exception{
      String url="/admin/delete";
      
      AdminVO admin =service.getAdminDetail(adminNum);

      String savePath = this.picturePath;
	   File imageFile = new File(savePath, admin.getPicture());
	   if(imageFile.exists()) {
		   imageFile.delete();
	   }

      service.deleteAdmin(adminNum);

      return url;
   }
   
   @GetMapping("/idCheck")
   @ResponseBody
   public ResponseEntity<String> idCheck(String email) throws Exception {
      ResponseEntity<String> entity = null;

      AdminVO admin = service.getAdminDetail(email);

      if (admin != null) {
         entity = new ResponseEntity<String>("duplicated", HttpStatus.OK);
      } else {
         entity = new ResponseEntity<String>("", HttpStatus.OK);
      }

      return entity;
   }
   

   @Resource(name = "picturePath")
   private String picturePath;
   
   @PostMapping(value = "/picture", produces = "text/plain;charset=utf-8")
   @ResponseBody
   public ResponseEntity<String> pictureUpload(@RequestParam("pictureFile") MultipartFile multi, 
                                    String oldPicture)
                                             throws Exception {
      ResponseEntity<String> entity = null;
      String result = "";
      HttpStatus status = null;
      
      /* 파일저장확인 */
      result = savePicture(oldPicture, multi);
      if (result == null) {
         result = "파일이 없습니다.!";
         status = HttpStatus.BAD_REQUEST;
      } else {
         status = HttpStatus.OK;

      }
      
      entity = new ResponseEntity<String>(result, status);
      return entity;
   }
   
   public String savePicture(String oldPicture, MultipartFile multi) throws Exception {
      // 저장 파일명
      String fileName = null;
      
      // 파일저장폴더설정 
      String uploadPath = this.picturePath;
      
      // 파일유무확인 
      if (!(multi == null || multi.isEmpty() || multi.getSize() > 1024 * 1024 * 1)) {
         String uuid=UUID.randomUUID().toString().replace("-","");
         fileName = uuid+"$$"+multi.getOriginalFilename();
         File storeFile = new File(uploadPath, fileName);

         // 파일경로 생성
         storeFile.mkdirs();

         // local HDD 에 저장.
         multi.transferTo(storeFile);
      }

      // 기존파일 삭제
      if (oldPicture != null && !oldPicture.isEmpty()) {
         File oldFile = new File(uploadPath, oldPicture);
         if (oldFile.exists()) {
            oldFile.delete();
         }
      }
      return fileName;
   }
   
   @GetMapping("/getPicture")
   public ResponseEntity<byte[]> getPicture(String id) throws Exception{
      AdminVO admin = service.getAdminDetail(id);
      
      if(admin==null) return new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
      
      String picture = admin.getPicture();
      String imgPath = this.picturePath;
      
      InputStream in = null;
      ResponseEntity<byte[]> entity = null;
      
		/*
		 * try { in = new FileInputStream(new File(imgPath, picture)); entity = new
		 * ResponseEntity<byte[]>(IOUtils.toByteArray(in), HttpStatus.OK); }finally {
		 * if(in != null) in.close(); }
		 */
      return entity;
   }
}
