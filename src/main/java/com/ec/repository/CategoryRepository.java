package com.ec.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.ec.models.Category;
import com.ec.models.Product;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {
    @Query("SELECT c FROM Category c WHERE c.id = :id")
    public Category getCategoryById(@Param("id") int id);

    // @Query("SELECT p FROM Category c, Porduct p WHERE c.id = :id")
    // public List<Product> fetchProductListByCategoryId(@Param("id") int id);

}