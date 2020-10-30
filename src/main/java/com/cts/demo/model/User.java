package com.cts.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	@Column(name="firstname")
	private String firstname;
	@Column(name="lastname")
	private String lastname;
	@Column(name="gender")
	private String gender;
	@Column(name="c_number")
	private String c_number;
	@Id
	@Column(name="userId")
	private String userId;
	@Column(name="password")
	private String password;
	@Column(name="address")
	private String address;
	
	protected User() {
		
	}
	public User(String firstname, String lastname, String gender, String c_number, String userId, String password,
			String address) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.gender = gender;
		this.c_number = c_number;
		this.userId = userId;
		this.password = password;
		this.address = address;
	}
	public String getFirstname() {
		return firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public String getGender() {
		return gender;
	}
	public String getC_number() {
		return c_number;
	}
	public String getUserId() {
		return userId;
	}
	public String getPassword() {
		return password;
	}
	public String getAddress() {
		return address;
	}

	

}
