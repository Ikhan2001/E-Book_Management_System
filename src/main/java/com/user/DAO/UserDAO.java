package com.user.DAO;

import com.user.entity.User;

public interface UserDAO {
	
	public boolean userRegister(User us);
	public User login(String email,String password);
}
