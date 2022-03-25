package com.ec.models;

import javax.persistence.*;

@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	// @NotBlank(message = "Please enter your name")
	private String name;
	// @NotBlank(message = "Please enter your phone number")
	private String phone_no;
	// @NotBlank(message = "Please enter your email")
	// @Email(message = "Please enter a valid email")
	private String email;
	private String password;
	private String address;
	private String user_type;
	// private String DOB;
	// private Address address;

	public User() {

	}

	public User(int id, String name, String phone_no, String email, String password, String address, String user_type) {
		this.id = id;
		this.name = name;
		this.phone_no = phone_no;
		this.email = email;
		this.password = password;
		this.address = address;
		this.user_type = user_type;
	}

	public User(String name, String phone_no, String email, String password, String address, String user_type) {
		this.name = name;
		this.phone_no = phone_no;
		this.email = email;
		this.password = password;
		this.address = address;
		this.user_type = user_type;
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
				+ password + ", address=" + address + ", user_type=" + user_type + "]";
	}
}