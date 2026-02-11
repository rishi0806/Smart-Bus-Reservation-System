package com.demo.service;

import com.demo.dao.AdminRepository;
import com.demo.model.Admin;
import java.util.Collection;
import java.util.Collections;
import java.util.Optional;
import lombok.AllArgsConstructor;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class adminServiceImpl implements AdminService {

  //, UserDetailsService {

  private final AdminRepository adminRepo;

  //	private final PasswordEncoder enoder;

  @Override
  public Optional<Admin> findAdmin(String username) {
    return adminRepo.findByUserName(username);
  }

  //	@Override
  //	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
  //		Admin admin = adminRepo.findByUserName(username);
  //		if (admin == null) {
  //			throw new RuntimeException("user Not Found"+admin.getUserName()+admin.getPassword());
  //		}
  //		return new  User(admin.getUserName(),enoder.encode("admin123"),Collections.EMPTY_LIST);
  //	}
}
