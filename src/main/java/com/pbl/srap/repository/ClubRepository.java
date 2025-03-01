package com.pbl.srap.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pbl.srap.model.Club;

public interface ClubRepository extends JpaRepository<Club, String> {
}

