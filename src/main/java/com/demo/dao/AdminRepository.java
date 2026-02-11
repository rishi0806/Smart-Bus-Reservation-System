package com.demo.dao;

import com.demo.model.Admin;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository<Admin, Long> {
  Optional<Admin> findByUserName(String userName);
}
