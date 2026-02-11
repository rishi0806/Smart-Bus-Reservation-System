package com.demo.service;

import com.demo.model.Users;
import java.util.Optional;

public interface UserService {
  String saveUser(Users user);
  Optional<Users> findUser(String userName);
}
