package com.pbl.srap.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pbl.srap.model.Achievement;

public interface AchievementRepository extends JpaRepository<Achievement, String> {
}
