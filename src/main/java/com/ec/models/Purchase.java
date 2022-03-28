package com.ec.models;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Purchase {
	@Id
	@GeneratedValue
	private int id;
	@Column(name = "user_id")
	private int userid;
	@OneToOne
	@JoinColumn(name = "product_id")
	private Product product;
	private Date date;
	private Time time;
	private String address;
	private double price;
	
	public double getPrice() {
		return price;
	}



	public void setPrice(double price) {
		this.price = price;
	}



	public Purchase() {
		
	}
	
	
	
	public Purchase(int id, int userid, Product product, Date date, Time time, String address, double price) {
		super();
		this.id = id;
		this.userid = userid;
		this.product = product;
		this.date = date;
		this.time = time;
		this.address = address;
		this.price = price;
	}

	public Purchase(int userid, Product product, Date date, Time time, String address, double price) {
		super();
		this.userid = userid;
		this.product = product;
		this.date = date;
		this.time = time;
		this.address = address;
		this.price = price;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public int getUserid() {
		return userid;
	}



	public void setUserid(int userid) {
		this.userid = userid;
	}



	public Product getProduct() {
		return product;
	}



	public void setProduct(Product product) {
		this.product = product;
	}



	public Date getDate() {
		return date;
	}



	public void setDate(Date date) {
		this.date = date;
	}



	public Time getTime() {
		return time;
	}



	public void setTime(Time time) {
		this.time = time;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	@Override
	public String toString() {
		return "Purchase [id=" + id + ", userid=" + userid + ", product=" + product + ", date=" + date + ", time="
				+ time + ", address=" + address + ", price=" + price + "]";
	}



	
}
