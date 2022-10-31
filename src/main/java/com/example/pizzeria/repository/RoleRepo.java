package com.example.pizzeria.repository;

import com.example.pizzeria.entity.RoleEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface RoleRepo extends JpaRepository<RoleEntity, UUID> {
    RoleEntity findByName(String name);
}
