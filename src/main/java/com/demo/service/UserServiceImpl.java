package com.demo.service;

import com.demo.dao.UserRepository;
import com.demo.model.Users;
import java.util.Optional;
import lombok.AllArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService {

  private final UserRepository userRepository;
  private final PasswordEncoder encoder;

  @Override
  public String saveUser(Users user) {
    Optional<Users> u = userRepository.findByUsername(user.getUsername());
    if (u.isPresent()) {
      System.out.println(
        u.get().getUsername() + " " + user.getUsername() + "im saved"
      );
      throw new RuntimeException("Username Exists");
    }

    String hashedPassword = encoder.encode(user.getPassword());

    user.setPassword(hashedPassword);

    userRepository.save(user);
    return null;
  }

  @Override
  public Optional<Users> findUser(String userName) {
    return userRepository.findByUsername(userName);
  }
}
