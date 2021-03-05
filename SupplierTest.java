package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Supplier;

public class SupplierTest 
{
	static SupplierDAO supplierDAO;
	
   @BeforeClass
   public static void initialize()
   {
	   AnnotationConfigApplicationContext mycontext=new AnnotationConfigApplicationContext();
	   
	   mycontext.scan("com.ecomm");
	   mycontext.refresh();
	   supplierDAO=(SupplierDAO)mycontext.getBean("supplierDAO");
   }
   
	@Test
	public void addSupplierTest()
	{
		Supplier supplier=new Supplier();
		supplier.setSupplierId(1001);
		supplier.setSupplierName("Ashish Nehra");
		supplier.setSuppliedItem("Nokia 6.1");
		supplier.setAdress("kukkatpally,HYD");
		
		
		assertTrue("Problem in inserting Supplier",supplierDAO.addSupplier(supplier));
		
	}

}
