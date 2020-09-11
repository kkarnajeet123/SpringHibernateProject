package com.vastika.uis.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vastika.uis.model.Role;
import com.vastika.uis.model.User;
import com.vastika.uis.repository.UserRepository;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	private static final String ROLE_NAME="ROLE_USER";
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public void saveUserInfo(User user) {
		
		Role role = new Role();
		role.setId(2);
		role.setRoleName(ROLE_NAME);
		user.setRole(role);
		userRepository.saveUserInfo(user);
		
	}

	@Override
	public void updateUserInfo(User user) {
		userRepository.updateUserInfo(user);
		
	}

	@Override
	public void deleteUserInfo(int id) {
		userRepository.deleteUserInfo(id);
		
	}

	@Override
	public User getUserInfoById(int id) {
		return userRepository.getUserInfoById(id);
		
	}

	@Override
	public List<User> getAllUserInfo() {
		return userRepository.getAllUserInfo();
		
	}

}
