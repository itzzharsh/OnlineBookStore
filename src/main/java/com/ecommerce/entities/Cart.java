package com.ecommerce.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;


@Entity
public class Cart {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@ManyToOne
	private BookData bookData;
	@ManyToOne
	private UserData userData;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public BookData getBookData() {
		return bookData;
	}
	public void setBookData(BookData bookData) {
		this.bookData = bookData;
	}
	public UserData getUserData() {
		return userData;
	}
	public void setUserData(UserData userData) {
		this.userData = userData;
	}
	public Cart(BookData bookData, UserData userData) {
		super();
		this.bookData = bookData;
		this.userData = userData;
	}
	public Cart() {
		super();
	}
	
	

}
