package com.ec.controllers;

import javax.validation.Valid;

import com.ec.models.User;
import com.ec.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/do_register")
    public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {

        if(result.hasErrors()) {
            return "login-register";
        }
        
        // User user1 = userService.saveUser(user);
        return "";
    }
}
