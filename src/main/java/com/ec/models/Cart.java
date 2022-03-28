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
public class Cart {
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
	
	public Cart() {
		
	}
	
	public Cart(int id, int user_id, Product product, Date date, Time time) {
		super();
		this.id = id;
		this.userid = user_id;
		this.product = product;
		this.date = date;
		this.time = time;
	}

	public Cart(int id, int user_id, Product product) {
		super();
		this.id = id;
		this.userid = user_id;
		this.product = product;
		java.util.Date date = new java.util.Date();
		this.date = new Date(date.getTime());
		this.time = new Time(date.getTime());
	}
	
	public Cart(int user_id, Product product) {
		super();
		this.userid = user_id;
		this.product = product;
		java.util.Date date = new java.util.Date();
		this.date = new Date(date.getTime());
		this.time = new Time(date.getTime());
	}
	
	@Override
	public String toString() {
		return "Cart [id=" + id + ", user_id=" + userid + ", product=" + product + ", date=" + date + ", time=" + time
				+ "]";
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return userid;
	}
	public void setUser_id(int user_id) {
		this.userid = user_id;
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
}
