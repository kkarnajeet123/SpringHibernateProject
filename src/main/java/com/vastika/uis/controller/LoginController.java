package com.vastika.uis.controller;

import java.math.BigInteger;
import java.security.Principal;
import java.security.SecureRandom;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.vastika.uis.model.User;
import com.vastika.uis.services.UserService;
import com.vastika.uis.util.EmailUtil;

@Controller
public class LoginController {
	
	private static final Logger log = Logger.getLogger(LoginController.class);
	@Autowired
	private UserService userService;
	@Autowired
	private JavaMailSender mailSender;

	@GetMapping("/login")
	public String getLoginPage() {
		return "login";
	}

	@PostMapping("/forgotpassword")
	public String getForgotPassword(@RequestParam String email) {
		System.out.println("Your emeil address is: " + email);
		User user = userService.getUserInfoByEmail(email);

		if (user != null) {
			String newpassword = generateNewPassword();
			user.setPassword(newpassword);
			userService.updateUserInfo(user);

			String subject = "forgot password";
			String message = "Hello, your new password is: " + newpassword;
			EmailUtil.sendEmail(mailSender, email, subject, message);
		}

		return "redirect:/login";
	}

	private String generateNewPassword() {
		SecureRandom random = new SecureRandom();
		return new BigInteger(50, random).toString(32);
	}

	@GetMapping("/logout")
	public String logout() {
	//User user= new User();
		
	//	log.info("logout user is: {}" + user.getUserName());
		return "redirect:/login";
	}

	@GetMapping("/accessdenied")
	public String accessDenied(ModelMap model) {
		model.addAttribute("error", "true");

		return "accessdenied";
	}

	@GetMapping("/profile")
	public String getProfile() {
		
	
		
		//log.info("logged into the profile");
		return "profile";
	}
	
}


