package com.spring.service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

public interface CCTVService {

   Map<String, String> cctv() throws SQLException,  IOException;
}