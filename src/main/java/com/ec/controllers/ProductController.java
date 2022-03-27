package com.ec.controllers;

import javax.servlet.http.HttpSession;

import com.ec.models.Product;
import com.ec.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class ProductController {
    @Autowired
    private ProductService productService;

    @PostMapping("/add-product")
    public String addProduct(@ModelAttribute Product product, Model model, HttpSession session) {
        productService.saveProduct(product);

        return "add-product";
    }

}
