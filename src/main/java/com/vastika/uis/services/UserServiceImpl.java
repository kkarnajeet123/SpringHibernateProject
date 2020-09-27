package com.vastika.uis.services;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vastika.uis.controller.UserController;
import com.vastika.uis.model.Role;
import com.vastika.uis.model.User;
import com.vastika.uis.repository.RoleRepository;
import com.vastika.uis.repository.UserRepository;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	private static final Logger log = Logger.getLogger(UserServiceImpl.class);

	private static final String ROLE_USER = "ROLE_USER";
	private static final String ROLE_ADMIN = "ROLE_ADMIN";

	@Autowired
	private UserRepository userRepository;
	// private RoleRepository roleRepository;

	@Override
	public void saveUserInfo(User user) {

		Role role = new Role();

		int select = user.getRole().getId();

		if (select == 0 || select > 2)
			new Exception();

		if (select == 1) {
			role.setId(user.getRole().getId());
			role.setRoleName(ROLE_ADMIN);
		} else {
			role.setId(user.getRole().getId());
			role.setRoleName(ROLE_USER);
		}
		log.info("role is: {}" + role.getRoleName());
		user.setRole(role);
		userRepository.saveUserInfo(user);

	}
	/*
	 * Role role = new Role(); int select=user.getRole().getId();
	 * 
	 * Role r=roleRepository.getRoleById(user.getRole().getId()); //return role
	 * 
	 * if(r!=null) {
	 * 
	 * 
	 * //role name, id role.setId(r.getId()); //r.id
	 * role.setRoleName(r.getRoleName()); user.setRole(role);
	 * 
	 * userRepository.saveUserInfo(user); }
	 * 
	 * /* Role role = new Role(); role.setId(2); role.setRoleName(ROLE_NAME);
	 * user.setRole(role); userRepository.saveUserInfo(user);
	 */

	// userRepository.saveUserInfo(user);
	/*
	 * Role role = new Role(); role.setId(user.getRole().getId());
	 * role.setRoleName(ROLE_NAME); user.setRole(role);
	 * userRepository.saveUserInfo(user);
	 */

	@Override
	public void updateUserInfo(User user) {

		Role role = new Role();

		int select = user.getRole().getId();

		if (select == 0 || select > 2)
			new Exception();

		if (select == 1) {
			role.setId(user.getRole().getId());
			role.setRoleName(ROLE_ADMIN);
		} else {
			role.setId(user.getRole().getId());
			role.setRoleName(ROLE_USER);
		}
		log.info("role is: {}" + role.getRoleName());
		user.setRole(role);

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

	@Override
	public User getUserInfoByEmail(String email) {

		return userRepository.getUserInfoByEmail(email);
	}

	@Override
	public User getUserInfoByUsername(String username) {

		return userRepository.getUserInfoByUsername(username);
	}

}
