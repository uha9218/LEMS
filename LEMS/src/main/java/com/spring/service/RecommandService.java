package com.spring.service;

import java.util.List;

import com.spring.dto.RecommandVO;

public interface RecommandService {
	
	List<RecommandVO> getRecentRecommand() throws Exception;
}