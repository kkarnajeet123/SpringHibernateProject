package com.vastika.uis.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vastika.uis.model.User;

@Controller
public class HomeController {
	//private static final Logger log = Logger.getLogger(HomeController.class);
	//@RequestMapping(value="/", method=RequestMethod.GET)
	@GetMapping("/home_page")
	public String loginPage() {
	//User user= new User();
		
		//log.info("User logged in: {}" + user.getUserId());
		return "Home";
	}

}
