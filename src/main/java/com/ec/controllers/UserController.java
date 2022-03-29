package com.ec.controllers;

import java.io.File;
import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.ec.models.Cart;
import com.ec.models.Product;
import com.ec.models.Purchase;
import com.ec.models.User;
import com.ec.repository.PurchaseRepository;
import com.ec.service.CartService;
import com.ec.service.ProductService;
import com.ec.service.PurchaseService;
import com.ec.service.UserService;
import com.google.common.io.Files;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
// @RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private CartService cartService;
	@Autowired
	private ProductService productService;
	@Autowired
	private PurchaseService purchaseService;

	@GetMapping("/account-details")
	public String accountDetails(@ModelAttribute User user , Model model, HttpSession session) {
		model.addAttribute("user", session.getAttribute("fuser"));
		return "account-details";
	}

	@GetMapping("/cart")
	public String showCart(HttpSession session, Model model) {
		User user = (User) session.getAttribute("fuser");
		List<Cart> cartList = cartService.fetchCartListByUserId(user.getId());
		double cost = 0;
		for (Cart cart : cartList) {
			cost += cart.getProduct().getPrice();
		}
		model.addAttribute("cartList", cartList);
		model.addAttribute("cost", cost);
		return "shopping-cart";
	}

	@GetMapping("/add-to-cart/{product_id}")
	public String addToCart(@PathVariable int product_id, HttpSession session) {
		Product product = productService.getProductById(product_id);
		User user = (User) session.getAttribute("fuser");
		Cart cart = new Cart(user.getId(), product);
		cartService.saveCart(cart);
		System.out.println(cart);
		return "redirect:/index";
	}

	@GetMapping("/cart/remove/{id}")
	public String removeProd(@PathVariable int id) {
		cartService.removeFromCart(id);
		return "redirect:/cart";
	}

	@GetMapping("/checkout")
	public String checkout(HttpSession session, Model model) {
		User user = (User) session.getAttribute("fuser");
		List<Cart> cartList = cartService.fetchCartListByUserId(user.getId());

		double cost = 0;
		for (Cart cart : cartList) {
			cost += cart.getProduct().getPrice();
		}
		model.addAttribute("checkOutList", cartList);

		model.addAttribute("checkOutCost", cost);

		return "checkout";
	}

	@PostMapping("/do-checkout")
	public String checkoutConfirm(HttpSession session, Model model,
			@RequestParam(required = false, name = "ship-box", defaultValue = "-1") String shipBox,
			@RequestParam(required = false, name = "address") String address) {
		User user = (User) session.getAttribute("fuser");

		java.util.Date temp_date = new java.util.Date();
		Date date = new Date(temp_date.getTime());
		Time time = new Time(temp_date.getTime());

		List<Cart> cartList = cartService.fetchCartListByUserId(user.getId());

		for (Cart cart : cartList) {
			Purchase purchase = null;
			if (shipBox == "1") {
				purchase = new Purchase(user.getId(), cart.getProduct(), date, time, address,
						cart.getProduct().getPrice());
			} else {
				purchase = new Purchase(user.getId(), cart.getProduct(), date, time, user.getAddress(),
						cart.getProduct().getPrice());
			}
			purchaseService.savePurchase(purchase);
		}

		cartService.checkOut(user.getId());
		return "redirect:/index";
	}

	@GetMapping("/purchase-history")
	public String purchaseHistory(HttpSession session, Model model) {
		User user = (User) session.getAttribute("fuser");

		List<Purchase> purchaseList = purchaseService.fetchPurchaseListByUserId(user.getId());
		double cost = 0;
		int count = 0;
		for (Purchase p : purchaseList) {
			cost += p.getPrice();
			count++;
		}

		model.addAttribute("purchases", purchaseList);
		model.addAttribute("purchaseCost", cost);
		model.addAttribute("purchaseCount", count);
		return "purchase-history";
	}
	
	@PostMapping("/updateDetails")
	public String updateUser(@ModelAttribute("user") User user, @RequestParam("file") MultipartFile file, HttpServletRequest request, HttpSession session) {
		User fuser = (User) session.getAttribute("fuser");
		if(!file.isEmpty()) {
			try{
			String uploadsDir = "/uploads/users/";
            String realPathtoUploads = request.getServletContext().getRealPath(uploadsDir);
            if (!new File(realPathtoUploads).exists()) {
                new File(realPathtoUploads).mkdir();
            }

            String orgName = file.getOriginalFilename();
            String fileName = Files.getNameWithoutExtension(orgName)
                    + new java.sql.Timestamp(System.currentTimeMillis()).getTime();
            String extension = Files.getFileExtension(orgName);
            orgName = fileName + '.' + extension;
            user.setImage(orgName);
            String filePath = realPathtoUploads + orgName;
            File dest = new File(filePath);
            file.transferTo(dest);
			}catch(Exception e) {
				
			}
		}else {
			user.setImage(fuser.getImage());
		}

		user.setPassword(fuser.getPassword());
		user.setUser_type(fuser.getUser_type());
		user.setId(fuser.getId());
		userService.updateUser(user);
		
		fuser = user;
		session.setAttribute("fuser", fuser);
		return "account-details";
	}
}
