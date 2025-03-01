package com.pbl.srap.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pbl.srap.repository.ClubRepository;

import java.util.List;

import com.pbl.srap.model.Club;

@Service
public class AllClubServiceImpl implements AllClubService {

    @Autowired
    private ClubRepository clubRepository;

    @Override
    public List<Club> getAllClubs() {
        return clubRepository.findAll(); // This retrieves all clubs from the database
    }
}

