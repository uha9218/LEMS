package com.spring.scheduler;

import java.io.File;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.spring.dao.AdminDAO;

public class RemoveAdminPictureScheduler {
	
	private AdminDAO adminDAO;
	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	
	private String picturePath;
	public void setPicturePath(String picturePath) {
		this.picturePath = picturePath;
	}
	
	private static final Logger logger = 
			LoggerFactory.getLogger(RemoveAdminPictureScheduler.class);
	
	
	public void removePicture() throws Exception {
		File dir = new File(picturePath);
		File[] files = dir.listFiles();

		if (files != null)
			for (File file : files) {
				if(adminDAO.selectAdminByPicture(file.getName())==null) {
					file.delete();
					logger.info("delete file : "+file.getName());
				}
			}

	}
}
