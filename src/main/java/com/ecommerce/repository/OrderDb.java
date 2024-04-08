package com.ecommerce.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ecommerce.entities.Cart;
import com.ecommerce.entities.Order;

public interface OrderDb extends CrudRepository<Order,Integer>{
	int countByUserDataId(int id);
	List<Cart> findAllByUserDataId(int id);
}

