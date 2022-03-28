package com.ec.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ec.models.Purchase;
import com.ec.repository.PurchaseRepository;

@Service
public class PurchaseService {
	@Autowired
	PurchaseRepository purchaseRepository;

	public Purchase savePurchase(Purchase purchase) {
		return purchaseRepository.save(purchase);
	}

	public List<Purchase> fetchPurchaseListByUserId(int user_id) {
		return purchaseRepository.findAllByUserid(user_id);
	}
	
	public void removeFromPurchase(int id) {
		purchaseRepository.deleteById(id);
	}
}
