package com.pbl.srap.controller;

// import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String index() {
        return "login";
    }

    @GetMapping("/Register")
    public String Register() {
        return "Register";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

}
