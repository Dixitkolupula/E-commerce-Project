 package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;

@Controller
public class ProductController 
{
	@Autowired
    ProductDAO productDAO;
	
	@RequestMapping("/showProduct")
    public String showProduct(Model m)    
    {
		List<Product> productList=productDAO.retrievePrducts();
    	m.addAttribute("productList" ,productList);
    	m.addAttribute("Pagename", "Product");
    	return "Product";
    	
    }   
	@RequestMapping("/InsertProduct")
    public String insertProduct(@RequestParam("productId")int productId,@RequestParam("productName")String productName,@RequestParam("price")int price,@RequestParam("stock")int stock,@RequestParam("productdesc")String productdesc,@RequestParam("category")String category,@RequestParam("supplier")String supplier,Model m)
    {
    Product product=new Product();
   product.setProductId(productId);
   product.setProductName(productName);
   product.setPrice(price);
   product.setStock(stock);
   product.setProductdesc(productdesc);
   product.setCategory(category);
   product.setSupplier(supplier);
    productDAO.addproduct(product);

    List<Product> productList=productDAO.retrievePrducts();
    m.addAttribute("productList" ,productList);
    m.addAttribute("Pagename", "Insert Product");
      
    return "Product";
    	}
	 @RequestMapping("/editProduct/{productId}")
     public String editProduct(@PathVariable("productId")int productId,Model m)
     {
     	System.out.println("Iam in edit Category");
     	
     	Product product=productDAO.getproduct(productId);
     	m.addAttribute("product", product);
     	productDAO.updateproduct(product);
     	m.addAttribute("Pagename", "Update Product");
     	
     	return "UpdateProduct";
     }
     @RequestMapping("/updateProduct")
     public String updateProduct(@RequestParam("productId")int productId,@RequestParam("productName")String productName,@RequestParam("price")int price,@RequestParam("stock")int stock,@RequestParam("productdesc")String productdesc,@RequestParam("category")String category,@RequestParam("supplier")String supplier,Model m)
     {
     	System.out.println("Iam in update Product");
     
     	
     	Product product=new Product();
     	product.setProductId(productId);
     	product.setProductName(productName);
     	product.setPrice(price);
     	product.setStock(stock);
     	product.setProductdesc(productdesc);
     	product.setCategory(category);
     	product.setSupplier(supplier);
     	productDAO.updateproduct(product);
     	List<Product> productList=productDAO.retrievePrducts();
     	m.addAttribute("productList", productList);
    	m.addAttribute("Pagename", "Product");
     	return "Product";
     }
	@RequestMapping("/deleteProduct/{productId}")
    public String deleteProduct(@PathVariable("productId")int productId,Model m)
    {
       Product product=productDAO.getproduct(productId);
       productDAO.deleteproduct(product);
       List<Product> productList=productDAO.retrievePrducts();
       m.addAttribute("productList" ,productList);
       m.addAttribute("Pagename", "Delete Product");
       
    	return "Product";
    }
	@RequestMapping("/productdisplay/{productId}")
	public String productdisplay(@PathVariable("productId")int productId,Model m)
	{
		System.out.println("Iam in product display");
		Product product=productDAO.getproduct(productId);
    	m.addAttribute("product", product);
    	productDAO.updateproduct(product);
    	
    	m.addAttribute("Pagename", "Products");
		return"Productdisplay";
	}
    @RequestMapping("/displayproduct")
    public String movetoCart(@RequestParam("productId")int productId,@RequestParam("productName")String productName,@RequestParam("price")int price,@RequestParam("stock")int stock,@RequestParam("productdesc")String productdesc,@RequestParam("category")String category,@RequestParam("supplier")String supplier,Model m)
    {
    	System.out.println("Iam in update Product");
    
    	Product product=new Product();
    	product.setProductId(productId);
    	product.setProductName(productName);
    	product.setPrice(price);
    	product.setStock(stock);
    	product.setProductdesc(productdesc);
    	product.setCategory(category);
    	product.setSupplier(supplier);
    	productDAO.updateproduct(product);
    	List<Product> productList=productDAO.retrievePrducts();
    	m.addAttribute("productList", productList);
    	m.addAttribute("Pagename", "Products");
    	
    	return "Cart";
    }

}
