package com.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import java.util.List;
import lombok.Data;

@Entity
@Data
public class Users {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @Column(nullable = false)
  @NotBlank(message = "username must not be Empty")
  private String username;

  @Column(nullable = false)
  @NotBlank(message = "Password must not be Empty")
  private String password;

  @Column(nullable = false)
  @NotBlank(message = "firstName must not be Empty")
  private String firstName;

  @Column(nullable = false)
  @NotBlank(message = "LastName must not be Empty")
  private String lastName;

  @Column(nullable = false)
  @NotBlank(message = "contact must not be Empty")
  private String contact;

  @Column(nullable = false)
  @NotBlank(message = "email must not be Empty")
  private String email;

  @OneToMany(mappedBy = "user")
  private List<Reservation> reservations;

  @OneToMany(mappedBy = "user")
  private List<Feedback> feedbacks;
}
