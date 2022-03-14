package com.ec.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {

    // @Autowired
    // private UserService userService;

    @RequestMapping("/index")
    public String showPage(Model model) {
        // model.addAttribute("user", new User());
        return "index";
    }

    @RequestMapping("/chk")
    @ResponseBody
    public String showtemp() {
        return "This is temp";
    }

}
