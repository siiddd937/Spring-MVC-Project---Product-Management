package com.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.springmvc.Dao.productDao;
import com.springmvc.model.product;


@Controller
public class mainController {
	
	@Autowired
	private productDao productDao;
	
	
	@RequestMapping("/")
	public String showHome(Model m)
	{
		System.out.println("View is Displayed");
		m.addAttribute("title","Product Home");
		
		return "index";
	}
	
	@RequestMapping("/ProductList")
	public String showProductList(Model model)
	{
		model.addAttribute("title","Product-List");
		
		List<product> productsList = productDao.getProductsList();
		
		model.addAttribute("product",productsList);
		
		return"ProductList";
	}
		
	
	@RequestMapping("/ProductAdd")
	public String showProductAdd(Model model)
	{
		model.addAttribute("title","Add Product");
		return "ProductAdd";
	}
	
	@RequestMapping(value= "/handleForm",method = RequestMethod.POST)
	public String handleform(@ModelAttribute product product)
	{
		System.out.println(product);
		
		this.productDao.saveUpdate_Product(product);
		
		
		return"redirect:/ProductList";
	}
	
	
	@RequestMapping("/deleteData/{productId}")
	public RedirectView deleteData(@PathVariable("productId") int id,HttpServletRequest request)
	{
		this.productDao.deleteProduct(id);
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/ProductList");
		
		
		return redirectView;
	}
	
	@RequestMapping("/updateData/{productId}")
	public String updateData(@PathVariable("productId") int id,Model model)
	{
		product product = this.productDao.getProduct(id);
		
		model.addAttribute("product",product);
		
		return "updateProduct";
	}
	
	

}
