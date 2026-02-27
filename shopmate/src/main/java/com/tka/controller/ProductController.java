package com.tka.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.PathVariable;

import com.tka.model.Product;
import com.tka.service.ProductService;

import jakarta.servlet.http.HttpSession;


@Controller
public class ProductController {

    @Autowired
    private ProductService productService;


    @GetMapping("/cart")
    public String getCart(Model model,HttpSession session) {
    	String log=(String ) session.getAttribute("log");
    	if(log.equals("user")) {
    		 List<Product> cartProducts = productService.getCart();
    		  
    	        model.addAttribute("cartProducts", cartProducts);
    	        double totalBill = productService.getTotalBill();
    	        model.addAttribute("totalBill", totalBill);
    	        return "cart";
   
    	}
    	 model.addAttribute("msg", "Login First*****");
    	 return "login";
    }

    @GetMapping("/add-to-cart/{pid}")
    public String addToCart(@PathVariable int pid, Model model)
          {

        Product cartProduct = productService.addToCart(pid);
        if (cartProduct != null) {
            model.addAttribute("msg",cartProduct.getName()+">> added to cart successfull!!!!");
    
        }
        List<Product> products=productService.getAllProducts();
        model.addAttribute("product",products);
        return "redirect:/shop";
    }
  
}