package com.ec.models;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.persistence.*;

@Entity
public class Category {
	@Id
	@GeneratedValue
	private int id;

	@Column(unique = true)
	private String category_name;

	@Column(nullable = false)
	private String category_desc;

	@Column(nullable = false)
	@OneToMany(mappedBy = "category")
	private List<Product> products = new ArrayList<>();

	public Category() {
	}

	public Category(int id, String category, String category_desc) {
		this.id = id;
		this.category_name = category;
		this.category_desc = category_desc;
	}

	public Category(String category, String category_desc, List<Product> products) {
		this.category_name = category;
		this.category_desc = category_desc;
		this.products = products;
	}

	public Category(String category, String category_desc) {
		this.category_name = category;
		this.category_desc = category_desc;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category) {
		this.category_name = category;
	}

	public String getCategory_desc() {
		return category_desc;
	}

	public void setCategory_desc(String category_desc) {
		this.category_desc = category_desc;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}
}
