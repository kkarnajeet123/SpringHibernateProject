package com.vastika.uis.services;

import java.util.List;

import com.vastika.uis.model.User;

public interface UserService {
	void saveUserInfo(User user);
	void updateUserInfo(User user);
	void deleteUserInfo(int id);
	User getUserInfoById(int id);
	List<User> getAllUserInfo();
	User getUserInfoByEmail(String email);
	User getUserInfoByUsername(String username);
	//void updateUserInfoById(User user, String role);
}
