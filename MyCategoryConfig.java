package com.ecomm.model;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MyCategoryConfig 
{
      @Bean(name="category")
      public Category getBean()
      {
    	  System.out.println("======Bean method called===========");
    	  Category category=new Category();
    	  category.setCategoryId(1001);
    	  category.setCategoryName("Mobiles");
    	  category.setCategoryDesc("4G Mobiles");
    	  return category;
    	  
      }
}
