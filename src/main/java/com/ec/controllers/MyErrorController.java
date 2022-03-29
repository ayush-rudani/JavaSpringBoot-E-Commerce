package com.ec.controllers;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyErrorController implements ErrorController {

    @RequestMapping("/error")
    public String handleError(HttpServletRequest request, Model model) {

        String errorMsg = "";
        int errorCode = 0;

        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);

        if (status != null) {
            int statusCode = Integer.parseInt(status.toString());

            if (statusCode == HttpStatus.NOT_FOUND.value()) {
                errorMsg = "Sorry but the page you are looking for does not exist, have been removed,<br> name changed or is temporarity unavailable.";
                errorCode = 404;
                // return "404";
            } else if (statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
                errorMsg = "Internal Server Error";
                errorCode = 500;
                // return "500";
            } else if (statusCode == HttpStatus.BAD_REQUEST.value()) {
                errorMsg = "Http Error Code: 400. Bad Request";
                errorCode = 400;
                // return "400";
            } else if (statusCode == HttpStatus.FORBIDDEN.value()) {
                errorMsg = "Http Error Code: 403. Forbidden";
                errorCode = 403;
                // return "403";
            } else if (statusCode == HttpStatus.UNAUTHORIZED.value()) {
                errorMsg = "Http Error Code: 401. Unauthorized";
                errorCode = 401;
                // return "401";
            }
        }
        model.addAttribute("errorMsg", errorMsg);
        model.addAttribute("errorCode", errorCode);
        return "404";
    }
}