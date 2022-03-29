package com.ec.controllers;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.ec.def.Message;
import com.ec.models.Cart;
import com.ec.models.Category;
import com.ec.models.Product;
import com.ec.models.User;
import com.ec.service.CartService;
import com.ec.service.CategoryService;
import com.ec.service.ProductService;
import com.ec.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@Autowired
	private UserService userService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CartService cartService;

	@ModelAttribute
	public void miniCart(Model model, HttpSession session) {
		User user = (User) session.getAttribute("fuser");
		if (user != null && (!model.containsAttribute("cartItem1"))) {
			List<Cart> cartList = new ArrayList<Cart>();
			cartList = cartService.fetchCartListByUserId(user.getId());
			double cartTotal = 0;
			for (Cart cart : cartList) {
				cartTotal += cart.getProduct().getPrice();
			}
			model.addAttribute("cartItem1", cartList.get(0));
			model.addAttribute("cartItem2", cartList.get(1));
			model.addAttribute("cost", cartTotal);
			model.addAttribute("cartItems", cartList.size());
		}
	}

	@RequestMapping("/index")
	public String showPage(Model model) {
		model.addAttribute("user", new User());

		if ((!model.containsAttribute("categories")) && (!model.containsAttribute("productList"))) {
			List<Category> categories = categoryService.fetchCategoryList();
			List<List<Product>> productList = new ArrayList<List<Product>>();

			categories.forEach(category -> {
				productList.add(productService.fetchProductListByCategory(category));
				// category.setProductList(productList);
			});

			// System.out.println(productList.get(0).get(0));
			// model.addAttribute("categories", categories);
			model.addAttribute("productList", productList);
		}
		return "index";
	}

	@PostMapping("/do_login")
	public String validateLogin(@ModelAttribute("user") User user, Model model, HttpServletRequest request,
			HttpSession session) {
		User foundUser = userService.findUserByEmailAndPassword(user.getEmail(), user.getPassword());
		if (foundUser == null) {
			session.setAttribute("message", new Message(
					"The email and password you entered did not match our records. Please double-check and try again",
					"alert-danger", "login"));
			return "redirect:/signup";
		}
		System.out.println("foudnUser : " + foundUser);

		request.getSession().setMaxInactiveInterval(60 * 60);
		request.getSession().setAttribute("fuser", foundUser);
		model.addAttribute("user", foundUser);

		if (foundUser.getUser_type().equals("ADMIN")) {
			return "redirect:/admin";
		} else if (foundUser.getUser_type().equals("USER")) {
			// return "redirect:/user";
			return "redirect:/account-details";
		}
		return "redirect:/signup";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String showLogin(@ModelAttribute("user") User user, Model model) {
		model.addAttribute("user", new User());
		System.out.println("Rediecting to Form");
		return "login";
	}

	@PostMapping("/do_register")
	public String registerUser(@ModelAttribute User user, BindingResult result, Model model, HttpSession session) {

		if (result.hasErrors()) {
			model.addAttribute("user", user);
			System.out.println(result.toString());
			return "redirect:/user/login";
		}

		System.out.println("Registering User");
		System.out.println(user);

		user.setUser_type("USER");
		// user.setPassword();
		// session.setAttribute("temp1", "hello user");

		try {
			userService.saveUser(user);
		} catch (Exception e) {
			session.setAttribute("message", new Message("Something went wrong!!", "alert-danger", "registration"));
			return "redirect:/signup";
		}
		model.addAttribute("user", new User());
		session.setAttribute("message", new Message("Successfully Registered!!", "alert-success", "registration"));
		// User user1 = userService.saveUser(user);
		return "redirect:/signup";
	}

	@GetMapping("/logout")
	public String Logout(HttpSession session) {
		session.invalidate();
		return "redirect:/signup";
	}

}
