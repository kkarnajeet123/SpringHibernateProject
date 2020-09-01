package com.vastika.uis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.vastika.uis.model.User;
import com.vastika.uis.services.UserService;

@Controller
public class UserController {
	
	@Autowired
	public UserService userService; 
	
	@RequestMapping ("/user_form")
	public String getUserForm() {
		
		return "createUser";
		
	}
	@RequestMapping(value="/user_save", method=RequestMethod.POST)
	public String saveUser(@ModelAttribute User user, Model model, BindingResult result) {
		//while using @ModelAttribute we need to have same name in createUser jsp file
		//like uname should be username as same as in User class in model package
		
		if(result.hasErrors()) {
			model.addAttribute("error", result.getFieldError());
			return "createUser";
		}else {
		
		userService.saveUserInfo(user);
		//model.addAttribute("user", user);//as we have written a separate method with a model so we do not need this line
		//return "listUser";//as this listUser is calling jsp and our returning data in url therefore we need to return "redirect:/user_list;
		return "redirect:/user_list";
		}
	}
	
	@RequestMapping(value="/user_update", method=RequestMethod.POST)
	public String updateUser(@ModelAttribute User user, Model model, BindingResult result) {
		
		userService.updateUserInfo(user);
		return "redirect:/user_list";
		
	}
	
	
	@RequestMapping(value= {"/","/user_list"}, method=RequestMethod.GET)
	//when we are sending data to view then we need to pass Model model
	public String getAllUser(Model model) {
		model.addAttribute("users", userService.getAllUserInfo());
		return "listUser";
	}
	
	@RequestMapping(value="/user_delete", method=RequestMethod.GET)
	public String deleteUserInfo(@RequestParam int id) {
		userService.deleteUserInfo(id);
		return "redirect:/user_list";
	}
	@RequestMapping("/user_edit")
	public String getUserEditForm(@RequestParam int id, Model model) {
		model.addAttribute("user", userService.getUserInfoById(id));
		return "editUser";
	}
	
	

}
