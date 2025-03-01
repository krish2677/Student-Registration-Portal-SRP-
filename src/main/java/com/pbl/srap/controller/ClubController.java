package com.pbl.srap.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.pbl.srap.model.Club;
import com.pbl.srap.service.AllClubService;
import com.pbl.srap.service.ClubService;

@Controller
public class ClubController {

    @Autowired
    private ClubService clubService;

    @GetMapping("/club/{ccode}")
    public String getClubDetails(@PathVariable("ccode") String ccode, Model model) {
        Club club = clubService.getClubByCcode(ccode)
                .orElseThrow(() -> new IllegalArgumentException("Invalid club code: " + ccode));
        model.addAttribute("club", club);
        model.addAttribute("achievement", club.getAchievement());
        model.addAttribute("role", club.getRole());
        return "club"; // Returns Thymeleaf template 'club.html'
    }

    @Autowired
    private AllClubService allclubService;

    @GetMapping("/home")
    public String getClubs(Model model) {
        List<Club> clubs = allclubService.getAllClubs();
        model.addAttribute("clubs", clubs);
        return "home"; // Returns home.html
    }
}




