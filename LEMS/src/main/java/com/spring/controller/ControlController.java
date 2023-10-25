package com.spring.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.command.SetRecordCommand;
import com.spring.dto.RecommandVO;
import com.spring.dto.SettingRecordVO;
import com.spring.dto.StatVO;
import com.spring.scheduler.RecommandTableScheduler;
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
	public String setTableDetail(String date, Model model) throws Exception{	
		String url="/control/setTableList";
		List<SettingRecordVO> setList = set.getRecordByTime(new SimpleDateFormat("yyyy/MM/dd HH:mm").parse(date));
		model.addAttribute("setList",setList);
		//System.out.println(date);
		return url;
	}
	@GetMapping("/basis")
	public String basis(Model model) throws Exception{	
		String url="/control/basis";
		StatVO st = stat.getStat();
		model.addAttribute("st",st);		
		return url;
	}
	
	@PostMapping(value="/update")
	@ResponseBody
	public String update(@RequestBody SetRecordCommand command) throws Exception{
		String url = "recTable.do";
			
		List<SettingRecordVO> record = command.getData();
		set.saveSettingTable(record);
		
		return url;
		
	}
	
}
