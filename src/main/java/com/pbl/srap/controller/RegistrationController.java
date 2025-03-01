package com.pbl.srap.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pbl.srap.model.Student;
import com.pbl.srap.service.StudentService;
@Controller
public class RegistrationController {

    @Autowired
    private StudentService studentService;

    @GetMapping("/register-clubs/{ccode}")
    public String showRegisterForm(@PathVariable("ccode") String ccode, Model model) {
        model.addAttribute("ccode", ccode);
        model.addAttribute("roles", List.of("Member", "Volunteer", "Marketing Team", "Technical Team Member" , "Research Assistant" , "Design Team Member"));
        return "register-clubs"; // Return the view name for the registration form
    }
    @PostMapping("/register-clubs")
    public String registerStudentToClub(@RequestParam("email") String email,
                                        @RequestParam("password") String password,
                                        @RequestParam("role") String role,
                                        @RequestParam("ccode") String ccode,
                                        Model model) {
        Student student = studentService.findByEmailAndPassword(email, password);

        if (student == null) {
            model.addAttribute("error", "Invalid email or password.");
            return "register-clubs/" + ccode; // Return to the registration form
        }

        if (student.getCclub() != null) {
            model.addAttribute("error", "You are already a member of a club.");
            return "register-clubs/" + ccode; // Return to the registration form
        }

        // Set the club code and role
        student.setCclub(ccode);
        student.setRole(role);
        studentService.saveStudent(student);

        model.addAttribute("success", "Registered successfully!");
        return "register-clubs"; // Show success message and redirect via JS after
    }
}
