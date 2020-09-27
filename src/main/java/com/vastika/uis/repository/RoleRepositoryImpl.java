package com.vastika.uis.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vastika.uis.model.Role;
import com.vastika.uis.util.HibernateUtil;

@Repository
public class RoleRepositoryImpl implements RoleRepository{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Role getRoleById(int id) {
		Session session = HibernateUtil.getSession(sessionFactory);
		Role role= (Role)session.get(Role.class,id);
		return role;
		}

}
