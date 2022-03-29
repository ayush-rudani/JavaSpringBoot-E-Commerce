package com.ec.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ec.models.Cart;
import com.ec.models.Category;
import com.ec.models.Product;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> {
    @Query("SELECT c FROM Cart c WHERE c.userid = :user_id")
    public List<Cart> getCartListByUserId(@Param("user_id") int user_id);

    public void deleteAllByUserid(int user_id);

    public List<Cart> findAllByUserid(int user_id);

    // public List<Product> findAllProductByUserid(int user_id);
}
