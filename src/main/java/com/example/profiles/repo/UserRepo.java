package com.example.profiles.repo;

import com.example.profiles.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface UserRepo extends JpaRepository<User, Long>{
}
