package com.demo.controller;

import com.demo.model.Admin;
import com.demo.model.Route;
import com.demo.service.AdminService;
import com.demo.service.BusService;
import com.demo.service.FeedbackService;
import com.demo.service.ReservationService;
import com.demo.service.RouteService;
import jakarta.servlet.http.HttpServletRequest;
import java.util.List;
import lombok.AllArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@AllArgsConstructor
public class AdminController {

  private AuthenticationManager authManger;
  private final AdminService adminService;
  private final RouteService routeService;
  private final BusService busService;
  private final FeedbackService feedbackService;
  private final ReservationService reservationService;

  @GetMapping("/login")
  public String showLogin() {
    return "adminlogin";
  }

  @PostMapping("/login")
  public String login(Admin admin, HttpServletRequest request) {
    System.out.println(admin.getPassword() + admin.getUserName());

    UsernamePasswordAuthenticationToken token =
      new UsernamePasswordAuthenticationToken(
        admin.getUserName(),
        admin.getPassword()
      );

    Authentication auth = authManger.authenticate(token);

    boolean status = auth.isAuthenticated();

    if (!status) {
      return "redirect:/login";
    }

    SecurityContext context = SecurityContextHolder.createEmptyContext();
    context.setAuthentication(auth);

    SecurityContextHolder.setContext(context);
    request
      .getSession(true)
      .setAttribute(
        HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY,
        context
      );
    return "redirect:/dashboard";
  }

  @GetMapping("/dashboard")
  public String dashboard(Model model) {
    List<Route> routes = routeService.getAllRoute();
    Long busCount = busService.getCountOfBuses();
    Long routeCount = routeService.getCountOfRoutes();
    Long feedbackCount = feedbackService.countFeedback();
    Long ReservationsCount = reservationService.countReservations();
    model.addAttribute("routes", routes);
    model.addAttribute("routecount", routeCount);
    model.addAttribute("buscount", busCount);
    model.addAttribute("feedbackCount", feedbackCount);
    model.addAttribute("ReservationsCount", ReservationsCount);

    return "admindashboard";
  }
}
