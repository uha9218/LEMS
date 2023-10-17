package com.spring.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.dto.RecommandVO;
import com.spring.dto.SettingRecordVO;
import com.spring.dto.StatVO;
import com.spring.service.RecommandService;
import com.spring.service.SettingRecordService;
import com.spring.service.StatService;

@Controller
@RequestMapping("/control")
public class ControlController {
	
	@Autowired
	private RecommandService rec;
	
	@Autowired
	private SettingRecordService set;
	
	@Autowired
	private StatService stat;
	
	@GetMapping("/main")
	public String main(Model model)throws Exception{
		String url="/control/recTable";
	      
	      Map<String,Object> dataMap = new HashMap<String,Object>();
	      
	      List<RecommandVO> recList= rec.getRecentRecommand();
	      dataMap.put("recList", recList);
	     
	      List<SettingRecordVO> setList = set.getRecentRecord();
	      dataMap.put("setList", setList);
	      
	      model.addAllAttributes(dataMap);
	      return url;
	}
	
	@GetMapping("/recTable")
   public String recTable(Model model) throws Exception{
      String url="/control/recTable";
      
      Map<String,Object> dataMap = new HashMap<String,Object>();
      
      List<RecommandVO> recList= rec.getRecentRecommand();
      dataMap.put("recList", recList);
     
      List<SettingRecordVO> setList = set.getRecentRecord();
      dataMap.put("setList", setList);
      
      model.addAllAttributes(dataMap);
      return url;
   }
	@GetMapping("/setTableList")
	public String setTableList(Model model) throws Exception{	
		String url="/control/setTableList";
		List<SettingRecordVO> setList = set.getRecentRecord();
		model.addAttribute("setList",setList);
		return url;
	}
	@GetMapping("/setTableDetail")
	public String setTableDetail(Date date, Model model) throws Exception{	
		String url="/control/setTableList";
		List<SettingRecordVO> setList = set.getRecordByTime(date);
		model.addAttribute("setList",setList);
		System.out.println(date);
		return url;
	}
	@GetMapping("/basis")
	public String basis(Model model,String statNum) throws Exception{	
		String url="/control/basis";
		StatVO st = stat.getStat(statNum);
		model.addAttribute("st",st);		
		return url;
	}
}
