package com.ecomm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.Product;

@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO 
{
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public boolean addproduct( Product product)
	{
		try
		{
		sessionFactory.getCurrentSession().save(product);
		System.out.println("Product Added");
		return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e.getMessage());
			return false;
		}
		
	}
	
	@Override
	public boolean deleteproduct(Product product)
	{
		try
		{
		sessionFactory.getCurrentSession().delete(product);
		System.out.println("Product Deleted");
	    return true;
	    }
		catch(Exception e)
		{
			System.out.println("Exception arised:"+e.getMessage());
			return false;
		}
		}
	@Override
	public boolean updateproduct(Product product)
		{
		try {
			sessionFactory.getCurrentSession().update(product);
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
			return false;
		}
		}
	@Override
	public Product getproduct(int productId)
	{
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class, productId);
		session.close();
		return product;

	}
	@Override
	public List<Product>retrievePrducts()
	{
		Session session=sessionFactory.openSession();
		List<Product> productList=(List<Product>)session.createQuery("from Product").list();
		session.close();
		return productList;
	}
	
}


