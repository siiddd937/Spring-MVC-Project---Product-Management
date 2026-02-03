package com.springmvc.Dao;

import java.util.List;

import com.springmvc.model.product;


public interface productDao {
	
	//save or update
	public void saveUpdate_Product(product p);
	
	//get all product
	public List<product> getProductsList();
	
	//get single product
	public product getProduct(int pid);
	
	//delete 
	public void deleteProduct(int pid);
	
	
	
}
