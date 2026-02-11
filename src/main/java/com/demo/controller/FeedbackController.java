package com.demo.controller;

import com.demo.model.Feedback;
import com.demo.model.Reservation;
import com.demo.model.Users;
import com.demo.service.FeedbackService;
import com.demo.service.ReservationService;
import com.demo.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import java.util.Optional;
import lombok.AllArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@AllArgsConstructor
public class FeedbackController {

  private final FeedbackService feedbackService;
  private final UserService service;
  private final ReservationService reservationService;

  @GetMapping("/user/feedback/{id}")
  public String getFeedback(@PathVariable Long id) {
    return "feedback";
  }

  @PostMapping("/user/feedback")
  public String saveFeedback(
    Feedback feedback,
    @RequestParam Long reservationId
  ) {
    Authentication authentication =
      SecurityContextHolder.getContext().getAuthentication();

    String username = authentication.getName();

    Optional<Users> user = service.findUser(username);

    feedback.setUser(user.get());
    Reservation reservation = reservationService.getReservationById(
      reservationId
    );

    feedback.setReservation(reservation);
    feedback.setBus(reservation.getBus());

    try {
      feedbackService.savefeedback(feedback);
    } catch (Exception e) {
      e.printStackTrace();
    }

    return "redirect:/user";
  }

  @GetMapping("admin/feedback")
  public String getFeedbackForAdmin(Model model) {
    model.addAttribute("feedbacks", feedbackService.getAll());
    return "adminfeedbacks";
  }
}
