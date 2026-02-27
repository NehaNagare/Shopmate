package com.tka.service;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.dao.ProductRepo;
import com.tka.model.Product;

@Service
public class ProductService {

    @Autowired
    ProductRepo productRepo;

    // keep old logic
//    private List<Product> productCardList = new ArrayList<>();

    private List<Product> productCartList = new ArrayList<>();

    public List<Product> getAllProducts() {

        List<Product> products = productRepo.findAll();

        for (Product product : products) {
            String pname = product.getName();
            String[] split = pname.split(" ");
            product.setImageUrl("images/" + split[0].toLowerCase() + ".jpg");
        }

        return products;
    }

    public Product addToCart(int id) {

        Product product = productRepo.findById(id).orElse(null);

        if (product != null) {

            String pname = product.getName();
            String[] split = pname.split(" ");
            product.setImageUrl("images/" + split[0].toLowerCase() + ".jpg");

            productCartList.add(product);
        }

        return product;
    }

    
    
    public List<Product> getCart() {
        return productCartList;
    }

    public double getTotalBill() {
        double totalBill = 0;

        for (Product product : productCartList) {
            totalBill += product.getPrice();
        }

        return totalBill;
    }
    
    
}