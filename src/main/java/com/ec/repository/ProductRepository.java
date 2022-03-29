package com.ec.repository;

import com.ec.models.Product;
import com.ec.models.Category;

import java.util.List;
import java.util.UUID;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

    @Query("SELECT p FROM Product p WHERE p.id = :id")
    public Product getProductById(@Param("id") int id);

    public List<Product> findTop5ProductByCategory(Category category);
    
    public List<Product> findAllProductByCategory(Category category);

    // public List<Product>

    public List<Product> findAllByOrderByNameAsc();

}