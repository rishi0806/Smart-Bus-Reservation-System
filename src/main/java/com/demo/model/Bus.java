package com.demo.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import java.time.LocalTime;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "buses")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Bus {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  private String busName;
  private String driverName;
  private String busType;
  private int seats;
  private LocalTime arrivalTime;
  private LocalTime departureTime;
  private int availableSeats;
  private int price;

  @JoinColumn(name = "route_id")
  @JsonBackReference
  @ManyToOne
  private Route route;

  @OneToMany(mappedBy = "bus", cascade = CascadeType.ALL, orphanRemoval = true)
  private List<Reservation> reservations;
}
