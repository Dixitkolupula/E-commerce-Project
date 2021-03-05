package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.model.Category;

public class CategoryTest 
{
	static CategoryDAO categoryDAO;
	
	@BeforeClass
	public static void initialize()
	{
AnnotationConfigApplicationContext mycontext=new AnnotationConfigApplicationContext();
		
		mycontext.scan("com.ecomm");
		
		mycontext.refresh();
		categoryDAO=(CategoryDAO)mycontext.getBean("categoryDAO");
	}
	@Ignore
	@Test
	public void addCategoryTest()
	{
		Category category=new Category();
		category.setCategoryId(1003);
		category.setCategoryName("Mobile-iphone");
		category.setCategoryDesc("iphone  Mobile Description");
			
		assertTrue("Problem in inserting Category",categoryDAO.addCategory(category));
	}
	@Ignore
	@Test
	public void updateCategoryTest()
	{
		Category category=(Category)categoryDAO.getCategory(1001);
		category.setCategoryDesc("ALL Samsung Mobiles with 4G and AI camera");
		System.out.println("Category ID:"+category.getCategoryId());
		System.out.println("Category Name:"+category.getCategoryName());
		assertTrue("Problem in updating Category",categoryDAO.updateCategory(category));
	}
	@Ignore
	@Test
	public void retrieveCategories()
	{
		List<Category>categoryList=(List<Category>)categoryDAO.retrieveCategories();
		
		assertTrue("Problem in retrieving the Category List",categoryList.size()>0);
		
		for(Category category:categoryList)
		{
			System.out.println(category);
		}
	}
    @Ignore
	@Test
	public void deleteCategory()
	{
		Category category=(Category)categoryDAO.getCategory(1005);
		assertTrue("Problem in deleting Category",categoryDAO.deleteCategory(category));
		
	}
}

