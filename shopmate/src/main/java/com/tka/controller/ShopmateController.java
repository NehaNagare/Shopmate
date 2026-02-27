package com.tka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.tka.model.Product;
import com.tka.service.ProductService;

//import ch.qos.logback.core.model.Model;

import jakarta.servlet.http.HttpSession;
@Controller
public class ShopmateController {

	 
    @Autowired
    private ProductService productService;
    
    // Index Page (Default)
    @GetMapping("/")
    public String getIndexPage(HttpSession session) {
    	 session.setAttribute("log",new String(""));
        return "index";   // index.jsp
    }

    // Home Page
    @GetMapping("/home")
    public String home(HttpSession session,Model model) {
    	String log=(String ) session.getAttribute("log");
    	if(log.equals("user"))
        return "home";    // home.jsp
    	model.addAttribute("msg","Login first***");
		return "login";
    }

    // Login Page
    @GetMapping("/login")
    public String login() {
        return "login";   // login.jsp
    }

    // Register Page
    @GetMapping("/register")
    public String register() {
        return "register";   // register.jsp
    }



    @GetMapping("/shop")
    public String shop(Model model,HttpSession session) {
    	String log=(String ) session.getAttribute("log");
    	if(log.equals("user")) {
        List<Product> products = productService.getAllProducts(); // fetch all products
        model.addAttribute("products", products); // send to JSP
        return "shop"; // products.jsp
    }
    	  model.addAttribute("msg","Login First***");
		return "login";
				}

    @GetMapping("/products")
    public String products(Model model) {
        List<Product> products = productService.getAllProducts(); // fetch all products
        model.addAttribute("products", products); // send to JSP
        return "products"; // products.jsp
    }
    
    @GetMapping("/logout")
    public String logout(HttpSession session) {

        session.invalidate();   // destroy session

        return "redirect:/login";
    }

    @GetMapping("/buy-now")
    public String generateBill(HttpSession session, Model model) {

        String log = (String) session.getAttribute("log");

        if (!"user".equals(log)) {
            return "redirect:/login";
        }

        // ✅ Get cart from service
        List<Product> cartProducts = productService.getCart();

        if (cartProducts == null || cartProducts.isEmpty()) {
            return "redirect:/cart";
        }

        double total = 0;

        // ✅ Proper loop
        for (Product p : cartProducts) {
            total += p.getPrice();
        }

        model.addAttribute("cartList", cartProducts);
        model.addAttribute("totalAmount", total);
        model.addAttribute("billDate", new java.util.Date());
        model.addAttribute("billNumber", System.currentTimeMillis());

        return "receipt";
    }
    
    @GetMapping("/checkout")
    public String checkout(HttpSession session) {

        session.removeAttribute("cart");

        return "redirect:/products";
    }
  
}