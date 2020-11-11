package com.hclass.project1.util;

import java.io.File;
import java.util.Calendar;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileSaver {

	public String saver(File dest, MultipartFile multipartFile) throws Exception{
		if(dest.exists()) {
			dest.mkdirs();
		}
		Calendar ca = Calendar.getInstance();
		long time =ca.getTimeInMillis();
		String name = multipartFile.getOriginalFilename();
		name=time+"_"+name;
		System.out.println(name);
		dest = new File(dest,name);
		FileCopyUtils.copy(multipartFile.getBytes(), dest);
		return name;
	}
}
