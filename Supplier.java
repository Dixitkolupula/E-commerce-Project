package com.ecomm.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Supplier
{
	@Id  
	int supplierId;
	String supplierName;
	String Adress;
	String suppliedItem;
	public String getSuppliedItem() {
		return suppliedItem;
	}
	public void setSuppliedItem(String suppliedItem) {
		this.suppliedItem = suppliedItem;
	}
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getAdress() {
		return Adress;
	}
	public void setAdress(String adress) {
		this.Adress = adress;
	}
	

}
