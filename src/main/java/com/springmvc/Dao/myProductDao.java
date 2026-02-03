package com.springmvc.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.model.product;

@Repository
public class myProductDao implements productDao{
	
	//declare & autowire hibernate template
	@Autowired
	private HibernateTemplate template;
	
	
	@Transactional
	@Override
	public void saveUpdate_Product(product p) {
		
		this.template.saveOrUpdate(p);
	}
	
	

	@Override
	public List<product> getProductsList() {
		
		List<product> list = this.template.loadAll(product.class);
		
		return list;
	}

	@Override
	public product getProduct(int pid) {
		
		product p = this.template.get(product.class, pid);
		
		return p;
	}

	@Transactional
	@Override
	public void deleteProduct(int pid) {
		
		product p= this.template.get(product.class, pid);
		
		this.template.delete(p);
	}



	


	
 
	
	
}
