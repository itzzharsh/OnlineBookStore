package com.ecommerce.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ecommerce.entities.Cart;

public interface CartDb extends CrudRepository<Cart,Integer>{
	int countByUserDataId(int id);
	List<Cart> findAllByUserDataId(int id);
}
