package com.pbl.srap.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pbl.srap.model.Student;
import com.pbl.srap.service.StudentService;

@Controller
@RequestMapping("/auth")
public class AuthController {

    @Autowired
    private StudentService studentService;

    @PostMapping("/register")
    public String registerStudent(@ModelAttribute Student student) {
        studentService.saveStudent(student);
        return "redirect:/home";  // Redirect to the login page after successful registration
    }

    @PostMapping("/login")
    public String login(@RequestParam("email") String email,
                        @RequestParam("password") String password, 
                        Model model) {
        
        boolean isAuthenticated = studentService.checkCredentials(email, password);
        
        if (isAuthenticated) {
            return "redirect:/home";  // Redirect to the home page after successful login
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "redirect:/";  // Return to the login page with an error message
        }
    }
}
