package com.demo.service;

import com.demo.dao.ReservationRepository;
import com.demo.model.Bus;
import com.demo.model.Reservation;
import jakarta.transaction.Transactional;
import java.time.LocalTime;
import java.util.List;
import java.util.Optional;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@Transactional
@AllArgsConstructor
public class ReservationServiceImpl implements ReservationService {

  private final BusService busService;
  private final ReservationRepository reserveRepository;
  private final String[] status = { "Success", "Failed" };

  @Override
  public synchronized Long saveReservation(
    Reservation reservation,
    Long busId,
    Integer seatsRequired
  ) {
    Bus bus = busService.getBusById(busId);
    System.out.println(
      reservation.getUser().getUsername() + " my name is You Know"
    );

    if (bus.getAvailableSeats() < seatsRequired) {
      throw new RuntimeException("No Seats Available");
    }
    try {
      System.out.println(
        "Available seats " +
          bus.getAvailableSeats() +
          " seats Requested " +
          seatsRequired +
          " new SEats" +
          (bus.getAvailableSeats() - seatsRequired)
      );
      bus.setAvailableSeats(bus.getAvailableSeats() - seatsRequired);
      busService.updateBus(busId, bus.getRoute().getId(), bus);
      reservation.setBus(bus);
      reservation.setReservationStatus(status[0]);
      reservation.setReservationTime(LocalTime.now());

      reserveRepository.save(reservation);
    } catch (Exception e) {
      reservation.setReservationStatus(status[1]);
      reserveRepository.save(reservation);
      throw new RuntimeException(e.getMessage());
    }
    return reservation.getId();
  }

  @Override
  public Reservation getReservationById(Long id) {
    Optional<Reservation> reservation = reserveRepository.findById(id);

    if (reservation.isEmpty()) throw new RuntimeException(
      "Reservation Not Found"
    );
    return reservation.get();
  }

  @Override
  public List<Reservation> getAll() {
    return reserveRepository.findAll();
  }

  @Override
  public Long countReservations() {
    return reserveRepository.count();
  }
}
