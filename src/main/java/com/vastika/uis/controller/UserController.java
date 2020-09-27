package com.vastika.uis.controller;

import java.security.Principal;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.vastika.uis.model.User;
import com.vastika.uis.services.UserService;
import com.vastika.uis.util.ImageUtil;

import lombok.extern.slf4j.Slf4j;

@Controller

public class UserController {

	// if no lombok then private static final Logger log=
	// Logger.getLogger(UserController.class); //we import from org.apache.log4j

	private static final Logger log = Logger.getLogger(UserController.class);

	// if we are useing lombok then we use annotation @Slf4j

	@Autowired
	public UserService userService;

	/*
	 * @RequestMapping("/") public String homePage() { return "Home"; }
	 */
	@RequestMapping("/user_form")
	public String getUserForm() {

		log.info("user form is opened..");
		return "createUser";

	}

	@RequestMapping(value = "/user_save", method = RequestMethod.POST)
	public String saveUser(@ModelAttribute @Valid User user, BindingResult result, @RequestParam CommonsMultipartFile file) {
		// while using @ModelAttribute we need to have same name in createUser jsp file
		// like uname should be username as same as in User class in model package

		if (result.hasErrors()) {
			log.error("error is: " + result.getFieldError());
			//model.addAttribute("error", result.getFieldError());
			log.fatal("this is fatal error");
			return "createUser";
		}

		String imageUrl = ImageUtil.writeImageToFile(file);
		user.setImageUrl(imageUrl);
		log.info("image path is: "+imageUrl);
		userService.saveUserInfo(user);
		log.info("user info is saved successfully");
		// model.addAttribute("user", user);//as we have written a separate method with
		// a model so we do not need this line
		// return "listUser";//as this listUser is calling jsp and our returning data in
		// url therefore we need to return "redirect:/user_list;
		return "redirect:/user_list";

	}

	@RequestMapping(value = "/user_update", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute @Valid User user, @RequestParam CommonsMultipartFile file, Model model,
			BindingResult result) {
		log.warn("file path must not be null!!");
		// System.out.println(user.getRole().getId());
		if (file != null) {

			String imageUrl = ImageUtil.writeImageToFile(file);
			user.setImageUrl(imageUrl);
		}

		userService.updateUserInfo(user);
		return "redirect:/user_list";

	}

	@RequestMapping(value = "/user_list", method = RequestMethod.GET)
	// @RequestMapping(value= {"/","/user_list"}, method=RequestMethod.GET)
	// when we are sending data to view then we need to pass Model model
	public String getAllUser(Model model) {
		model.addAttribute("users", userService.getAllUserInfo());
		return "listUser";
	}

	@RequestMapping(value = "/user_delete", method = RequestMethod.GET)
	public String deleteUserInfo(@RequestParam int id) {

		userService.deleteUserInfo(id);
		return "redirect:/user_list";
	}

	@RequestMapping("/user_edit")
	public String getUserEditForm(@RequestParam int id, Model model) {

		log.info("user edit form is opened{}" + id);
		model.addAttribute("user", userService.getUserInfoById(id));

		return "editUser";
	}

	@RequestMapping("/user_profile")
	public String getUserProfile(@RequestParam int id, Model model) {
		model.addAttribute("user", userService.getUserInfoById(id));

		return "profile";

	}

	@RequestMapping(value = "/resetpassword", method = RequestMethod.GET)
	public String getPasswordResetPage() {

		return "resetpassword";
	}

	@RequestMapping(value = "/update_password", method = RequestMethod.POST)
	public String getResetPasswordUpdate(@RequestParam String currentpassword, @RequestParam String newpassword,
			@RequestParam String confirmpassword, Principal principal, User user) {

		String username = principal.getName();
		user = userService.getUserInfoByUsername(username);
		if (user != null) {
			String storedPassword = user.getPassword();
			if (currentpassword != null || newpassword != null || confirmpassword != null) {
				if (currentpassword.equals(storedPassword)) {

					if (newpassword.equals(confirmpassword)) {
						user.setPassword(newpassword);
						userService.updateUserInfo(user);
					} else {
						System.out.println("New Password did not match with confirmed password!!!");
					}
				} else {
					System.out.println("current password is invalid!!");
				}
			}
		}

		return "redirect:/user_list";
	}

}
