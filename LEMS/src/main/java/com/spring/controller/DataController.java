package com.spring.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.spring.command.TrafficFileCommand;
import com.spring.command.TrafficFileSearchCommand;

@Controller
@RequestMapping("/data")
public class DataController {

		
	

	@RequestMapping("/traffic")
	public String traffic(@ModelAttribute("command") TrafficFileSearchCommand command, Model model) throws Exception {
	    String url = "/data/traffic";

	    List<TrafficFileCommand> fileList = downloadURLTrafficFileList(command);

	    model.addAttribute("fileList", fileList);
	    return url;
	}

	private List<TrafficFileCommand> downloadURLTrafficFileList(TrafficFileSearchCommand command) throws Exception {
	    List<TrafficFileCommand> fileList = null;

	    if (command != null && command.getFromDate() != null && command.getToDate() != null) {
	        URL url = new URL("https://www.its.go.kr/opendata/getTestDataFileList");
	        HttpURLConnection con = (HttpURLConnection) url.openConnection();
	        con.setRequestMethod("POST");
	        con.setRequestProperty("Content-Type", "application/json");
	        con.setRequestProperty("Accept", "application/json");
	        con.setDoOutput(true);

	        String jsonInputString = "{\"body\":{\"data\":{\"searchType\":-1,\"workingDirectory\":\""
	                + "traffic\",\"startDate\":\"" + command.getFromDate() + "\",\"endDate\":\"" + command.getToDate()
	                + "\"}}}";
	        try (OutputStream os = con.getOutputStream()) {
	            byte[] input = jsonInputString.getBytes("utf-8");
	            os.write(input, 0, input.length);
	        }

	        String jsonResult = "";
	        try (BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"))) {
	            StringBuilder response = new StringBuilder();
	            String responseLine = null;
	            while ((responseLine = br.readLine()) != null) {
	                response.append(responseLine.trim());
	            }
	            jsonResult = response.toString();
	        }

	        ObjectMapper objectMapper = new ObjectMapper();
	        Map<String, Object> resultMap = objectMapper.readValue(jsonResult, Map.class);
	        List<Map<String, Object>> fileListVO = (List<Map<String, Object>>) ((Map<String, Object>) ((Map<String, Object>) resultMap.get("body")).get("data")).get("fileVOList");

	        if (fileListVO != null) {
	            fileList = new ArrayList<TrafficFileCommand>();
	            for (Map<String, Object> file : fileListVO) {
	                System.out.println(file.get("fileStreNm"));
	                String fileName = (String)file.get("fileStreNm");                
	                String fileUrl = "https://its.go.kr/opendata/fileDownload/traffic/"+fileName.substring(0,4)+"/";

	                fileList.add(new TrafficFileCommand(fileName, fileUrl+fileName));
	            }
	        }
	    } else {
	        // command, fromDate, 또는 toDate가 null인 경우에 대한 처리
	    }

	    return fileList;
	}

	@RequestMapping("/acci")
	public String acci(@ModelAttribute("command") TrafficFileSearchCommand command, Model model) throws Exception {
	    String url = "/data/acci";

	    List<TrafficFileCommand> fileList = downloadURLTrafficFileList1(command);

	    model.addAttribute("fileList", fileList);
	    return url;
	}

	private List<TrafficFileCommand> downloadURLTrafficFileList1(TrafficFileSearchCommand command) throws Exception {
	    List<TrafficFileCommand> fileList = null;

	    if (command != null && command.getFromDate() != null && command.getToDate() != null) {
	        URL url = new URL("https://www.its.go.kr/opendata/getTestDataFileList");
	        HttpURLConnection con = (HttpURLConnection) url.openConnection();
	        con.setRequestMethod("POST");
	        con.setRequestProperty("Content-Type", "application/json");
	        con.setRequestProperty("Accept", "application/json");
	        con.setDoOutput(true);

	        String jsonInputString = "{\"body\":{\"data\":{\"searchType\":-1,\"workingDirectory\":\""
	                + "traffic\",\"startDate\":\"" + command.getFromDate() + "\",\"endDate\":\"" + command.getToDate()
	                + "\"}}}";
	        try (OutputStream os = con.getOutputStream()) {
	            byte[] input = jsonInputString.getBytes("utf-8");
	            os.write(input, 0, input.length);
	        }

	        String jsonResult = "";
	        try (BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"))) {
	            StringBuilder response = new StringBuilder();
	            String responseLine = null;
	            while ((responseLine = br.readLine()) != null) {
	                response.append(responseLine.trim());
	            }
	            jsonResult = response.toString();
	        }

	        ObjectMapper objectMapper = new ObjectMapper();
	        Map<String, Object> resultMap = objectMapper.readValue(jsonResult, Map.class);
	        List<Map<String, Object>> fileListVO = (List<Map<String, Object>>) ((Map<String, Object>) ((Map<String, Object>) resultMap.get("body")).get("data")).get("fileVOList");

	        if (fileListVO != null) {
	            fileList = new ArrayList<TrafficFileCommand>();
	            for (Map<String, Object> file : fileListVO) {
	                System.out.println(file.get("fileStreNm"));
	                String fileName = (String)file.get("fileStreNm");                
	                String fileUrl = "https://its.go.kr/opendata/fileDownload/event/"+fileName.substring(0,4)+"/";

	                fileList.add(new TrafficFileCommand(fileName, fileUrl+fileName));
	            }
	        }
	    } else {
	        // command, fromDate, 또는 toDate가 null인 경우에 대한 처리
	    }

	    return fileList;
	}

	@RequestMapping("/sun")
	public String sun(@ModelAttribute("command") TrafficFileSearchCommand command, Model model) throws Exception {
	    String url = "/data/sun";

	    List<TrafficFileCommand> fileList = downloadURLTrafficFileList2(command);

	    model.addAttribute("fileList", fileList);
	    return url;
	}

	private List<TrafficFileCommand> downloadURLTrafficFileList2(TrafficFileSearchCommand command) throws Exception {
	    List<TrafficFileCommand> fileList = null;

	    if (command != null && command.getFromDate() != null && command.getToDate() != null) {
	        URL url = new URL("https://www.its.go.kr/opendata/getTestDataFileList");
	        HttpURLConnection con = (HttpURLConnection) url.openConnection();
	        con.setRequestMethod("POST");
	        con.setRequestProperty("Content-Type", "application/json");
	        con.setRequestProperty("Accept", "application/json");
	        con.setDoOutput(true);

	        String jsonInputString = "{\"body\":{\"data\":{\"searchType\":-1,\"workingDirectory\":\""
	                + "traffic\",\"startDate\":\"" + command.getFromDate() + "\",\"endDate\":\"" + command.getToDate()
	                + "\"}}}";
	        try (OutputStream os = con.getOutputStream()) {
	            byte[] input = jsonInputString.getBytes("utf-8");
	            os.write(input, 0, input.length);
	        }

	        String jsonResult = "";
	        try (BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"))) {
	            StringBuilder response = new StringBuilder();
	            String responseLine = null;
	            while ((responseLine = br.readLine()) != null) {
	                response.append(responseLine.trim());
	            }
	            jsonResult = response.toString();
	        }

	        ObjectMapper objectMapper = new ObjectMapper();
	        Map<String, Object> resultMap = objectMapper.readValue(jsonResult, Map.class);
	        List<Map<String, Object>> fileListVO = (List<Map<String, Object>>) ((Map<String, Object>) ((Map<String, Object>) resultMap.get("body")).get("data")).get("fileVOList");

	        if (fileListVO != null) {
	            fileList = new ArrayList<TrafficFileCommand>();
	            for (Map<String, Object> file : fileListVO) {
	                System.out.println(file.get("fileStreNm"));
	                String fileName = (String)file.get("fileStreNm");                
	                String fileUrl = "https://its.go.kr/opendata/fileDownload/event/"+fileName.substring(0,4)+"/";

	                fileList.add(new TrafficFileCommand(fileName, fileUrl+fileName));
	            }
	        }
	    } else {
	        // command, fromDate, 또는 toDate가 null인 경우에 대한 처리
	    }

	    return fileList;
	}


}
