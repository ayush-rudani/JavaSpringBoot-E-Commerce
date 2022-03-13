package com.ec.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("/index")
    public String showPage() {
        return "index";
    }

    @RequestMapping("/login")
    public String showLogin() {
        return "login-register";
    }

}
