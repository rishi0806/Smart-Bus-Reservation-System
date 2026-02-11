package com.demo.service;

import com.demo.model.Reservation;
import java.util.List;

public interface ReservationService {
  Long saveReservation(
    Reservation reservation,
    Long busId,
    Integer seatsRequired
  );

  Reservation getReservationById(Long id);

  List<Reservation> getAll();

  Long countReservations();
}
