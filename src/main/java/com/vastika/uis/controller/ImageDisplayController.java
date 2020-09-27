package com.vastika.uis.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vastika.uis.model.User;
import com.vastika.uis.services.UserService;
import com.vastika.uis.util.ImageUtil;

@Controller
public class ImageDisplayController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/image_display")
	public void displayImage(@RequestParam int id, HttpServletResponse response) {
		
		
		User user = userService.getUserInfoById(id);
		ImageUtil.displayImage(user.getImageUrl(), response);
	
	}
	
	

}
