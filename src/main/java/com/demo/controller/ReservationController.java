package com.demo.controller;

import com.demo.model.Bus;
import com.demo.model.Reservation;
import com.demo.model.Users;
import com.demo.service.BusService;
import com.demo.service.ReservationService;
import com.demo.service.UserService;
import java.time.LocalDate;
import java.util.Optional;
import lombok.AllArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@AllArgsConstructor
public class ReservationController {

  private final BusService busService;
  private final ReservationService reservationService;
  private final UserService service;

  @GetMapping("user/reserve")
  public String getResetvation(@RequestParam Long id, Model model) {
    model.addAttribute("id", id);
    return "reservation";
  }

  @ModelAttribute("bus")
  public Bus bus(Long id) {
    if (id == null) {
      return null;
    }

    return busService.getBusById(id);
  }

  @GetMapping("/user/payment")
  public String Payement(
    @RequestParam("id") Long busId,
    @RequestParam Integer seats,
    Reservation reservation,
    Model model
  ) {
    try {
      busService.checkCanBook(busId, seats);
    } catch (Exception e) {
      return "reservation";
    }

    model.addAttribute("id", busId);
    model.addAttribute("seatsrequested", seats);
    model.addAttribute("source", reservation.getSource());
    model.addAttribute("destination", reservation.getDestination());
    model.addAttribute("date", reservation.getReservationDate());

    return "payment";
  }

  @PostMapping("/user/payment")
  public String saveReservation(
    @RequestParam("busId") Long busId,
    @RequestParam("seats") Integer seats,
    @ModelAttribute Reservation reservation,
    Model model
  ) {
    Authentication authentication =
      SecurityContextHolder.getContext().getAuthentication();

    String username = authentication.getName();

    Optional<Users> user = service.findUser(username);

    if (user.isPresent()) reservation.setUser(user.get());
    try {
      Long reservationId = reservationService.saveReservation(
        reservation,
        busId,
        seats
      );
      model.addAttribute("reservationId", reservationId);
    } catch (Exception e) {
      System.out.println("Error " + e.getMessage());
    }

    return "paymentsucess";
  }

  @GetMapping("user/reservations")
  public String getAllReservation(Model model) {
    Authentication auth =
      SecurityContextHolder.getContext().getAuthentication();

    String username = auth.getName();

    Users user = service.findUser(username).get();

    model.addAttribute("reservations", user.getReservations());

    return "userreservations";
  }

  @GetMapping("admin/reservations")
  public String getAllReservationForAdmin(Model model) {
    model.addAttribute("reservations", reservationService.getAll());

    return "adminreservations";
  }
}
