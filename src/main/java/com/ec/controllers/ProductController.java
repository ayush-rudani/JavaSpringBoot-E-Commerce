package com.ec.controllers;

import javax.servlet.http.HttpSession;

import com.ec.def.Message;
import com.ec.models.Product;
import com.ec.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
// @RequestMapping("/admin")
public class ProductController {
    @Autowired
    private ProductService productService;

    @GetMapping("/add-product")
    public String showAddProduct(@ModelAttribute("product") Product product, Model model) {
        model.addAttribute("product", new Product());
        System.out.println("Rediecting to Product Form");
        return "add-product";
    }

    @PostMapping("/saveProduct")
    public String addProduct(@ModelAttribute Product product, Model model, HttpSession session) {
        productService.saveProduct(product);
        session.setAttribute("message", new Message("Product added successfully", "alert-success"));
        return "redirect:/add-product";
    }

    @GetMapping("/product")
    public String productDetails(@RequestParam("pid") int pid, Model model) {
        Product product = productService.getProductById(pid);
        model.addAttribute("product", product);
        return "product-details";
    }

}
