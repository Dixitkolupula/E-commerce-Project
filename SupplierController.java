package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Supplier;

@Controller
public class SupplierController 
{
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping("/showSupplier")
	public String showSupplier(Model m)
	{
		List<Supplier> supplierList=supplierDAO.retrieveSuppliers();
		m.addAttribute("supplierList", supplierList);
		m.addAttribute("Pagename", "Supplier");
		return "Supplier";
	}
	@RequestMapping("/InsertSupplier")
	public String insertSupplier(@RequestParam("supplierId")int supplierId,@RequestParam("supplierName")String supplierName,@RequestParam("Adress")String Adress,@RequestParam("suppliedItem")String suppliedItem,Model m)
	{
	Supplier supplier=new Supplier();
	supplier.setSupplierId(supplierId);
	supplier.setSupplierName(supplierName);
	supplier.setSuppliedItem(suppliedItem);
	supplier.setAdress(Adress);
	
	supplierDAO.addSupplier(supplier);
	List<Supplier> supplierList=supplierDAO.retrieveSuppliers();
	m.addAttribute("supplierList", supplierList);
	m.addAttribute("Pagename", "Insert Supplier");
	
	 return "Supplier";			
	}
	@RequestMapping("/editSupplier/{supplierId}")
	public String editSupplier(@PathVariable("supplierId")int supplierId,Model m)
	{
		System.out.println("Iam in edit Supplier");
		Supplier supplier=supplierDAO.getSupplier(supplierId);
		m.addAttribute("supplier", supplier);
		supplierDAO.updateSupplier(supplier);
		m.addAttribute("Pagename", "Update Supplier");
		return"UpdateSupplier";
	}
	@RequestMapping("/updateSupplier")
	public String updateSupplier(@RequestParam("supplierId")int supplierId,@RequestParam("supplierName")String supplierName,@RequestParam("Adress")String Adress,@RequestParam("suppliedItem")String suppliedItem,Model m)
	{
		System.out.println("Iam in update Supplier");
		Supplier supplier=new Supplier();
		supplier.setSupplierName(supplierName);
		supplier.setSupplierId(supplierId);
		supplier.setSuppliedItem(suppliedItem);
		supplier.setAdress(Adress);
		supplierDAO.updateSupplier(supplier);
		List<Supplier> supplierList=supplierDAO.retrieveSuppliers();
		m.addAttribute("supplierList", supplierList);
		m.addAttribute("Pagename", "Supplier");
		return "Supplier";
	}
	@RequestMapping("/deleteSupplier/{supplierId}")
	public String deleteSupplier(@PathVariable("supplierId")int supplierId,Model m)
	{
		Supplier supplier=supplierDAO.getSupplier(supplierId);
		supplierDAO.deteleSupplier(supplier);
		List<Supplier> supplierList=supplierDAO.retrieveSuppliers();
		m.addAttribute("supplierList", supplierList);
		m.addAttribute("Pagename", "Delete Supplier");
		return "Supplier";
	}
	
}
