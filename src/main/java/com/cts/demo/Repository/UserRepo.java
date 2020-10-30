package com.cts.demo.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cts.demo.model.User;

public interface UserRepo extends JpaRepository <User,String> {

}
