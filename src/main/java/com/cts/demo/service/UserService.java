package com.cts.demo.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cts.demo.Repository.UserRepo;
import com.cts.demo.model.User;

@Component
@Service
@Transactional
public class UserService {
	@Autowired 
	UserRepo userRepo;
	
	
	public UserService(UserRepo userRepo) {
		super();
		this.userRepo = userRepo;
	}


	public void saveUser(User user) {
		userRepo.save(user);
	}
	
	

	

}
