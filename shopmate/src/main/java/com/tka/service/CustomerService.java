package com.tka.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.dao.CustomerRepo;
import com.tka.model.Customer;

@Service
public class CustomerService {
	@Autowired
	CustomerRepo customerDao;
	
	public void addCustomer(Customer customer) {
		
		customerDao.save(customer);
		System.out.println("in service >> customer added !!!!!!!!!");	
	}
	
	public Customer verifyLoginCred(String username,String password) {
		List<Customer> allCustomer=customerDao.findAll();
		for(Customer customer : allCustomer) {
			if(customer.getUsername().equals(username)) {
				if(customer.getPassword().equals(password)) {
					return customer;
				}
			}
		}
		return null;
	}

	public Customer getCustomerById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
