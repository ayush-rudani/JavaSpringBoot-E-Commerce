package com.ec.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/temp")
	public String tmp(Model model) {
		System.out.println("Inside Con.");
		model.addAttribute("name", "Ayush");
		return "temp";
	}

}
