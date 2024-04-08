package com.ecommerce.repository;


import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ecommerce.entities.BookData;


public interface BookDataDb extends CrudRepository<BookData, Integer> {

	List<BookData> findAllByCategory(String category);

	List<BookData> findAllByBookName(String bookName);
	
    List<BookData> findByBookNameContainingIgnoreCaseOrAuthorContainingIgnoreCase(String bookName, String author);
    
	
}

 