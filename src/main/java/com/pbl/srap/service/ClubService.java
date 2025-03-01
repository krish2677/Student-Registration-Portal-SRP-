package com.pbl.srap.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pbl.srap.repository.ClubRepository;

import java.util.Optional;

import com.pbl.srap.model.Club;

@Service
public class ClubService {

    @Autowired
    private ClubRepository clubRepository;

    public Optional<Club> getClubByCcode(String ccode) {
        return clubRepository.findById(ccode);
    }
}

