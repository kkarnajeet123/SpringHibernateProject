package com.vastika.uis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	@GetMapping("/login")
	public String getLoginPage() {
		return "login";
	}
	/*
	@PostMapping
	public String login() {
		return "redirect:/home";
	}
*/
	@PostMapping("/forgotpassword")
	public String getForgotPassword(@RequestParam String email) {
		System.out.println("email is: "+email);
		return "redirect:/login";
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "redirect:/login";
	}
	
	@GetMapping("/accessdenied")
	public String accessDenied(ModelMap model) {
		model.addAttribute("error","true");
		
		return "accessdenied";
	}
}
