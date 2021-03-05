package com.ecomm.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class GeneralTest
{
	public static void main(String arg[])
	{
		AnnotationConfigApplicationContext mycontext=new AnnotationConfigApplicationContext();
		
		mycontext.scan("com.ecomm");
		
		mycontext.refresh();
	}

}
