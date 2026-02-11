package com.demo.service;

import com.demo.model.Admin;
import com.demo.model.Users;
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
public class CustomUserDetailsService implements UserDetailsService {

  private final UserServiceImpl Uservice;
  private final adminServiceImpl Aservice;
  private final PasswordEncoder encoder;

  @Override
  public UserDetails loadUserByUsername(String username)
    throws UsernameNotFoundException {
    Optional<Admin> admin = Aservice.findAdmin(username);

    if (admin.isPresent()) {
      return User.builder()
        .username(admin.get().getUserName())
        .password(encoder.encode("admin123"))
        .roles("ADMIN")
        .build();
    }

    Optional<Users> user = Uservice.findUser(username);

    if (user.isPresent()) {
      return User.builder()
        .username(user.get().getUsername())
        .password(user.get().getPassword())
        .roles("USER")
        .build();
    }

    throw new UsernameNotFoundException("User not found: " + username);
  }
}
