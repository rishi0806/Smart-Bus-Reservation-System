package com.demo.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import lombok.Data;

@Entity
@Data
public class Reservation {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  private String reservationStatus;
  private Integer reservationAmount;
  private LocalDate reservationDate;
  private LocalTime reservationTime;

  private String source;

  private String destination;

  private LocalDateTime journeyStated;
  private LocalDateTime journeyEnded;

  @JoinColumn(name = "user_id")
  @ManyToOne
  private Users user;

  @JoinColumn(name = "bus_id")
  @ManyToOne
  private Bus bus;

  @OneToOne(mappedBy = "reservation")
  private Feedback feedback;
}
