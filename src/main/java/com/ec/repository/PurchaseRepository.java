package com.ec.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ec.models.Purchase;


@Repository
public interface PurchaseRepository extends JpaRepository<Purchase, Integer> {
   
    public void deleteById(int id);
    
    public List<Purchase> findAllByUserid(int user_id);
}
