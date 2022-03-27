package com.ec.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.ec.def.Message;
import com.ec.models.User;
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

	@RequestMapping("/index")
	public String showPage(Model model) {
		model.addAttribute("user", new User());
		return "index";
	}

	@PostMapping("/do_login")
	public String validateLogin(@ModelAttribute User user, Model model, HttpServletRequest request,
			HttpSession session) {
		User foundUser = userService.findUserByEmailAndPassword(user.getEmail(), user.getPassword());
		if (foundUser == null) {
			session.setAttribute("message", new Message(
					"The email and password you entered did not match our records. Please double-check and try again",
					"alert-danger"));
			return "redirect:/signup";
		}
		System.out.println("foudnUser : " + foundUser);

		request.getSession().setMaxInactiveInterval(60 * 60);
		request.getSession().setAttribute("fuser", foundUser);

		if (foundUser.getUser_type().equals("ADMIN")) {
			return "redirect:/admin";
		} else if (foundUser.getUser_type().equals("USER")) {
			return "redirect:/user";
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
		userService.saveUser(user);
		model.addAttribute("user", new User());
		session.setAttribute("message", new Message("Successfully Registered!!", "alert-success"));
		// User user1 = userService.saveUser(user);
		return "redirect:/signup";
	}

	@GetMapping("/logout")
	public String Logout(HttpSession session) {
		session.invalidate();
		return "redirect:/signup";
	}

}
