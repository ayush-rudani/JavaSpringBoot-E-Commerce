package com.ec.service;

import java.util.List;

import com.ec.models.Category;
import com.ec.models.Product;
import com.ec.repository.ProductRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;

    public Product saveProduct(Product product) {
        return productRepository.save(product);
    }

    public List<Product> fetchProductList() {
        return (List<Product>) productRepository.findAll();
    }

    public Product getProductById(int id) {
        return productRepository.getProductById(id);
    }

    public Product updateProduct(Product product, int id) {
        Product product1 = productRepository.findById(id).get();
        product1.setName(product.getName());
        product1.setPrice(product.getPrice());
        // product1.setCategory(product.getCategory());
        product1.setDescription(product.getDescription());
        product1.setImage(product.getImage());
        return productRepository.save(product1);
    }

    public void deleteProduct(int id) {
        productRepository.deleteById(id);
    }

    public List<Product> fetchProductListByCategory(Category category) {
        return productRepository.findTop5ProductByCategory(category);
    }
    
    public List<Product> fetchAllProductsByCategory(Category category) {
        return productRepository.findAllProductByCategory(category);
    }

    public List<Product> fetchAllProduct() {
        return productRepository.findAllByOrderByNameAsc();
    }

}
