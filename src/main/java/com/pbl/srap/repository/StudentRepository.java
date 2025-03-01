package com.pbl.srap.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.pbl.srap.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {
    Student findByEmail(String email);
    // Finding by email and password without hashing
    Student findByEmailAndPassword(String email, String password);
    
    boolean existsByCclub(String cclub); // Check if a club membership already exists
}
