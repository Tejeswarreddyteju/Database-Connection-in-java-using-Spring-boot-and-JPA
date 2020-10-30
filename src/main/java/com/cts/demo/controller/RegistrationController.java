package com.cts.demo.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.demo.model.User;
import com.cts.demo.service.UserService;

@Controller
public class RegistrationController {
	@Autowired
	UserService userservice;
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String homepage() {
		
		return "registration";
	}
	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String returnhomepage(@RequestParam String firstname,@RequestParam String lastname,@RequestParam String gender,@RequestParam String c_number,@RequestParam String userId,@RequestParam String password,@RequestParam String address) {
		User user = new User(firstname,lastname,gender,c_number,userId,password,address);
		userservice.saveUser(user);
		return "success";
	}
	

}
