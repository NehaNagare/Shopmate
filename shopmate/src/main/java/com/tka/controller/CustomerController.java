package com.tka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.tka.model.Customer;
import com.tka.service.CustomerService;

import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    // Register Customer
    @PostMapping("/register-customer")
    public String addCustomer(@ModelAttribute Customer customer) {
        System.out.println("Customer >> " + customer);
        customerService.addCustomer(customer);
        return "login";
    }

    // Verify Login
    @PostMapping("/verify-login")
    public String verifyLoginCred(String username, String password, Model model,HttpSession session) {
    	Customer customer=customerService.verifyLoginCred(username, password);
    	if(customer!=null) {
    		model.addAttribute("msg",customer.getFullname()+":logged is successfull!!!");
    		if(username.equalsIgnoreCase("admin")) {
    			session.setAttribute("log", "admin");
    			
    		}else {
    			session.setAttribute("log", "user");
    		}
    		session.setAttribute("id", customer.getCid());
    		return "home";
    	}
    	model.addAttribute("msg","user logged in Failed......");
    	return "login";
    }
    
    @GetMapping("/profile")
    public String getCustomer(Model model,HttpSession session) {
    String log=(String ) session.getAttribute("log");
    if(log.equals("user")) {
    	int id=(int) session.getAttribute("id");
    	Customer customer=customerService.getCustomerById(id);
    	model.addAttribute("customer",customer);
    	return "profile";
    }
    model.addAttribute("msg","Login First***");
    return "login";
}
 
    @GetMapping("/update-profile")
    public String updateCustomer(@ModelAttribute Customer customer) {
    	return "profile";
    }
    
//    @GetMapping("/logout")
//    public String logout(HttpSession session) {
//    	session.invalidate();
//    	return "index";
//    }

    
}