package com.ec.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ec.models.Cart;
import com.ec.repository.CartRepository;

@Service
public class CartService {
	@Autowired
	CartRepository cartRepository;

	public Cart saveCart(Cart cart) {
		return cartRepository.save(cart);
	}

	public List<Cart> fetchCartListByUserId(int user_id) {
		return cartRepository.findAllByUserid(user_id);
	}
	
	public void removeFromCart(int id) {
		cartRepository.deleteById(id);
	}
	
	@Transactional
	public void checkOut(int user_id) {
		cartRepository.deleteAllByUserid(user_id);
	}
}
