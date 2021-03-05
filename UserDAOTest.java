package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

public class UserDAOTest 
{
static UserDAO userDAO;
	
	@BeforeClass
	public static void initialize()
	{
AnnotationConfigApplicationContext mycontext=new AnnotationConfigApplicationContext();
		
		mycontext.scan("com.ecomm");
		
		mycontext.refresh();
		userDAO=(UserDAO)mycontext.getBean("userDAO");
	}

	@Test
	public void registerUserTest()
	{
		UserDetail user=new UserDetail();
		user.setUsername("kumar");
		user.setPassword("12345");
		user.setCustomerName(" Kumar");
		user.setEnabled(true);
	   user.setEmailId("karthik@gmail.com");
	   user.setAddress("Secunderabad");
	   user.setMobileNo("9089097890");
	   user.setRole("ROLE-USER");
	   
	   
		assertTrue("Problem in Inserting UserDetail", userDAO.registerUser(user));
	}


}
