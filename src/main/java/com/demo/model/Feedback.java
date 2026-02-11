package com.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import java.time.LocalDate;
import java.time.LocalTime;
import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

@Entity
@Data
public class Feedback {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  private Integer driverRating;
  private Integer serviceRating;
  private Integer overallRating;
  private String comments;

  @CreationTimestamp
  private LocalDate feedbackDate;

  @CreationTimestamp
  private LocalTime submittedAt;

  @ManyToOne
  @JoinColumn(name = "user_id")
  private Users user;

  @ManyToOne
  @JoinColumn(name = "bus_id")
  private Bus bus;

  @OneToOne
  @JoinColumn(name = "reservation_id")
  private Reservation reservation;
}
