package com.tka.model;

import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Component
@Entity
public class Customer {
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	int cid;
	String fullname;
	String email;
	String username;
	String password;
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Customer(int cid, String fullname, String email, String username, String password) {
		super();
		this.cid = cid;
		this.fullname = fullname;
		this.email = email;
		this.username = username;
		this.password = password;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Customer [cid=" + cid + ", fullname=" + fullname + "]";
	}
	
	
}
