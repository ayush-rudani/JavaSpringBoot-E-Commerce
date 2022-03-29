package com.ec.models;

import java.util.UUID;

import javax.persistence.*;

@Entity
public class User {
	@Id
	@GeneratedValue
	int id;
	// @NotBlank(message = "Please enter your name")
	@Column(nullable = false)
	private String name;
	// @NotBlank(message = "Please enter your phone number")
	@Column(nullable = false)
	private String phone_no;
	@Column(unique = true, nullable = false)
	private String email;
	@Column(nullable = false)
	private String password;
	@Column(nullable = false)
	private String address;
	@Column(nullable = false)
	private String user_type;
	private String image;
	// private String DOB;
	// private Address address;

	public User() {

	}

	public User(int id, String name, String phone_no, String email, String password, String address, String user_type, String image) {
		this.id = id;
		this.name = name;
		this.phone_no = phone_no;
		this.email = email;
		this.password = password;
		this.address = address;
		this.user_type = user_type;
		this.image = image;
	}

	public User(String name, String phone_no, String email, String password, String address, String user_type, String image) {
		this.name = name;
		this.phone_no = phone_no;
		this.email = email;
		this.password = password;
		this.address = address;
		this.user_type = user_type;
		this.image = image;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
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

	public String getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", phone_no=" + phone_no + ", email=" + email + ", password="
				+ password + ", address=" + address + ", user_type=" + user_type + ", image=" + image + "]";
	}

	
}