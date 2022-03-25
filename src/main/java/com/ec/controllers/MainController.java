package com.ec.controllers;

import javax.servlet.http.HttpSession;

import com.ec.def.Message;
import com.ec.models.User;
import com.ec.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@Autowired
	private UserService userService;

	@RequestMapping("/index")
	public String showPage(Model model) {
		model.addAttribute("user", new User());
		return "index";
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

		userService.saveUser(user);

		model.addAttribute("user", new User());
		session.setAttribute("message", new Message("Successfully Registered!!", "alert-success"));

		// User user1 = userService.saveUser(user);
		return "redirect:/signup";
	}

}
