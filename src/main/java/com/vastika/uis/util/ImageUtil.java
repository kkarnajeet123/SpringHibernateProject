package com.vastika.uis.util;


import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class ImageUtil {

	
	private static final String IMAGE_PATH="C:/Users/krisn/Pictures/java_pics/";
	private static final int BUFFER_SIZE=1024;
	
	public static String writeImageToFile(CommonsMultipartFile file) {
		String fileName=file.getOriginalFilename();
		String imageUploadPath = IMAGE_PATH+fileName;
		
		
		try(
				FileOutputStream fos = new FileOutputStream(imageUploadPath)
				){
			
			byte[] bytes = file.getBytes();
			fos.write(bytes);
			fos.flush();
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		return imageUploadPath;
	}
	
	public static void displayImage(String imageUrl, HttpServletResponse response) {
		
		try(BufferedInputStream in = new BufferedInputStream(new FileInputStream(imageUrl),BUFFER_SIZE);
				BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream(),BUFFER_SIZE);)
		{
			
			int len;
			byte[] bytes= new byte[BUFFER_SIZE];
			while((len=in.read(bytes))!=-1) {
				out.write(bytes,0,len);
				out.flush();
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
