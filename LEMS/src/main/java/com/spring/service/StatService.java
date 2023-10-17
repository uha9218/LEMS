package com.spring.service;

import com.spring.dto.StatVO;

public interface StatService {
	StatVO getStat(String StatNum) throws Exception;
}
