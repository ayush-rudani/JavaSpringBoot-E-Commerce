package com.ec.controllers;

import java.io.File;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.ec.def.Message;
import com.ec.models.Category;
import com.ec.models.Product;
import com.ec.models.User;
import com.ec.service.CategoryService;
import com.ec.service.ProductService;
import com.google.common.io.Files;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
// @RequestMapping("/admin")
public class ProductController {
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private ProductService productService;
    @Autowired
    private CategoryService categoryService;

    @GetMapping("/add-product")
    public String showAddProduct(@ModelAttribute("product") Product product, Model model, HttpSession session) {
        if (session.getAttribute("fuser") == null)
            return "redirect:/signup";
        if (((User) session.getAttribute("fuser")).getUser_type() == "USER")
            return "redirect:/index";
        model.addAttribute("product", new Product());
        model.addAttribute("categories", categoryService.fetchCategoryList());
        System.out.println("Rediecting to Product Form");
        return "add-product";
    }

    @PostMapping("/saveProduct")
    public String addProduct(@ModelAttribute Product product, Model model, HttpSession session,
            @RequestParam("file") MultipartFile file) {
        if (session.getAttribute("fuser") == null)
            return "redirect:/signup";
        if (((User) session.getAttribute("fuser")).getUser_type() == "USER")
            return "redirect:/index";
        if (!file.isEmpty()) {
            try {
                String uploadsDir = "/uploads/products/";
                String realPathtoUploads = request.getServletContext().getRealPath(uploadsDir);
                if (!new File(realPathtoUploads).exists()) {
                    new File(realPathtoUploads).mkdir();
                }

                String orgName = file.getOriginalFilename();
                String fileName = Files.getNameWithoutExtension(orgName)
                        + new java.sql.Timestamp(System.currentTimeMillis()).getTime();
                String extension = Files.getFileExtension(orgName);
                orgName = fileName + '.' + extension;
                product.setImage(orgName);
                String filePath = realPathtoUploads + orgName;
                File dest = new File(filePath);
                file.transferTo(dest);
            } catch (Exception e) {
                System.out.println("Exception: " + e.getMessage());
            }
        }
        productService.saveProduct(product);
        session.setAttribute("message", new Message("Product added successfully", "alert-success", "add-product"));
        return "redirect:/add-product";
    }

    @GetMapping("/product/{pid}")
    public String productDetails(@PathVariable int pid, Model model, HttpSession session) {
        if (session.getAttribute("fuser") == null)
            return "redirect:/signup";
        Product product = (Product) productService.getProductById(pid);
        Category category = (Category) categoryService.getCategoryById(product.getCategory().getId());
        System.out.println(product.toString());
        System.out.println(category);
        model.addAttribute("category", category);
        model.addAttribute("product", product);
        return "/product-details";
    }

    @GetMapping("/add-category")
    public String showAddCategory(@ModelAttribute Category category, Model model, HttpSession session) {
        if (session.getAttribute("fuser") == null)
            return "redirect:/signup";
        if (((User) session.getAttribute("fuser")).getUser_type() == "USER")
            return "redirect:/index";
        model.addAttribute("category", new Category());
        return "add-category";
    }

    @PostMapping("/saveCateory")
    public String saveCateory(@ModelAttribute("category") Category category, Model model, HttpSession session) {
        if (session.getAttribute("fuser") == null)
            return "redirect:/signup";
        if (((User) session.getAttribute("fuser")).getUser_type() == "USER")
            return "redirect:/index";
        category.setProducts(null);
        categoryService.saveCategory(category);
        session.setAttribute("message", new Message("Category added successfully", "alert-success", "add-category"));
        return "redirect:/add-category";
    }

    @GetMapping("/inventory")
    public String showInventroy(Model model, HttpSession session) {
        if (session.getAttribute("fuser") == null)
            return "redirect:/signup";
        if (((User) session.getAttribute("fuser")).getUser_type() == "USER")
            return "redirect:/index";
        List<Product> productList = productService.fetchAllProduct();
        model.addAttribute("products", productList);
        return "inventory";
    }

    @GetMapping("/product/remove/{id}")
    public String removeProduct(@PathVariable("id") int id, Model model, HttpSession session) {
        if (session.getAttribute("fuser") == null)
            return "redirect:/signup";
        if (((User) session.getAttribute("fuser")).getUser_type() == "USER")
            return "redirect:/index";
        productService.deleteProduct(id);
        return "redirect:/inventory";
    }

}
