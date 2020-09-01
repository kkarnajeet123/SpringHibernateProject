package com.vastika.uis.repository;

import java.util.List;

import com.vastika.uis.model.User;

public interface UserRepository {
	
	void saveUserInfo(User user);
	void updateUserInfo(User user);
	void deleteUserInfo(int id);
	User getUserInfoById(int id);
	List<User> getAllUserInfo();
	
}
