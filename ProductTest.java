package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;

public class ProductTest 
{
	static ProductDAO productDAO;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext mycontext=new AnnotationConfigApplicationContext();
		
		mycontext.scan("com.ecomm");
		mycontext.refresh();
		productDAO=(ProductDAO)mycontext.getBean("productDAO");
	}
	
	@Test
	public void addproductTest()
	{
		Product product=new Product();
		product.setProductId(1015);
		product.setProductName("Realme C11");
		product.setPrice(7499);
		product.setStock(16);
		product.setProductdesc("2GB RAM|32GB ROM|Expandable upto 256GB");
		product.setCategory("lafoot");
		product.setSupplier("sdkjc");
		
		
		assertTrue("Problem in inserting Product",productDAO.addproduct(product));
	}
	}

	


