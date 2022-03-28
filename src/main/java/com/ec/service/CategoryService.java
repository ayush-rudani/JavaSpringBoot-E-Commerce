package com.ec.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ec.models.Category;
import com.ec.models.Product;
import com.ec.repository.CategoryRepository;

@Service
public class CategoryService {
	@Autowired
	CategoryRepository categoryRepository;
	
	public List<Category> fetchCategoryList() {
        return (List<Category>) categoryRepository.findAll();
    }
}
