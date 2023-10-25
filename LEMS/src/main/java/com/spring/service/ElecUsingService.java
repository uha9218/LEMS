package com.spring.service;

import java.util.List;

import com.spring.dto.ElecUsingVO;

public interface ElecUsingService {
	List<ElecUsingVO> getRecentElecByHwCode(String hwCode) throws Exception;
}
