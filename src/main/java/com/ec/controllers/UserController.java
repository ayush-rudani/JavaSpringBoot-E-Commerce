package com.ec.controllers;

import javax.servlet.http.HttpSession;

import com.ec.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
// @RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;

	@GetMapping("/account-details")
	public String accountDetails(Model model, HttpSession session) {
		// model.addAttribute("user", session.getAttribute("fuser"));
		return "account-details";
	}

}
