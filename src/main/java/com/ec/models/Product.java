package com.ec.models;

import java.util.UUID;

import javax.persistence.*;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
public class Product {
	@Id
	@GeneratedValue
	private int id;
	@Column(nullable = false)
	private String name;
	@Column(nullable = false)
	private int price;
	@Column(nullable = false)
	private String description;
	private String image;
	@ManyToOne
	@Cascade(CascadeType.REFRESH)
	private Category category;

	public Product() {
	}

	public Product(int id, String name, String description, String image, int price, Category category) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.image = image;
		this.price = price;
		this.category = category;
	}

	public Product(String name, String description, String image, int price, Category category) {
		this.name = name;
		this.description = description;
		this.image = image;
		this.price = price;
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Product [category=" + category + ", description=" + description + ", id=" + id + ", image=" + image
				+ ", name=" + name + ", price=" + price + "]";
	}

}
