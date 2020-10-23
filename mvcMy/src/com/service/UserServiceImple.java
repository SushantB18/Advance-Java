package com.service;

import com.dto.User;
import com.dao.RegisterDao;
import com.dao.RegisterDaoImple;

public class UserServiceImple implements UserService{

	private RegisterDao registerDao;
	
	
	
	public UserServiceImple() {
		registerDao = new RegisterDaoImple();
	}

	@Override
	public int register(User user) {
		return registerDao.InsertUser(user); 
		
	}

	@Override
	public boolean login(User user) {
		
		return registerDao.login(user);
	}

}
