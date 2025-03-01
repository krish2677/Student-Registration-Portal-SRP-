package com.pbl.srap.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pbl.srap.model.Role;

public interface RoleRepository extends JpaRepository<Role, String> {
}
