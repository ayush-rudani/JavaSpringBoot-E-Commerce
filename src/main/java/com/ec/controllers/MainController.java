package com.ec.controllers;

import com.ec.models.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("/index")
    public String showPage() {
        return "index";
    }

    @RequestMapping("/login")
    public String showLogin(Model model) {
        model.addAttribute("user", new User());
        System.out.println("Rediecting to Form");
        return "login-register";
    }

}
