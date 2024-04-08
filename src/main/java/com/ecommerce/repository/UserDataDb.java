package com.ecommerce.repository;

import org.springframework.data.repository.CrudRepository;

import com.ecommerce.entities.UserData;

public interface UserDataDb extends CrudRepository<UserData,Integer>{
	
	UserData findByEmail(String email);

}
