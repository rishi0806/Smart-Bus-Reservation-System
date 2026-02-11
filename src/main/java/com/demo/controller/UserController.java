package com.demo.controller;

import com.demo.model.Bus;
import com.demo.model.Reservation;
import com.demo.model.Users;
import com.demo.service.BusService;
import com.demo.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@AllArgsConstructor
public class UserController {

  private final UserService service;
  private final BusService busService;
  private final AuthenticationManager authenticationManager;

  @GetMapping("/user")
  public String dashboard(Authentication authentication, Model model) {
    try {
      model.addAttribute("isAuthenticated", authentication.isAuthenticated());
    } catch (Exception e) {
      return "redirect:/user/login";
    }
    return "dashboard";
  }

  @GetMapping("/user/reg")
  public String userReg(Model model) {
    model.addAttribute("user", new Users());
    return "userreg";
  }

  @PostMapping("/user/reg")
  public String saveUser(Users user, Model model) {
    try {
      service.saveUser(user);
      return "redirect:/user/login";
    } catch (Exception e) {
      System.out.println(e.getMessage());
      model.addAttribute("error", e.getMessage());
      return "userreg";
    }
  }

  @GetMapping("/user/bus/get")
  public String getBus(
    @RequestParam String routeFrom,
    @RequestParam String routeTo,
    Model model
  ) {
    try {
      model.addAttribute("routeFrom", routeFrom);
      model.addAttribute("routeTo", routeTo);
    } catch (Exception e) {
      return "redirect:/user/login";
    }
    return "dashboard";
  }

  @ModelAttribute("buses")
  public List<Bus> getBuses(String routeFrom, String routeTo) {
    return busService.findBusFromRouteFromAndTo(routeFrom, routeTo);
  }

  @GetMapping("/user/login")
  public String getLogin() {
    return "userlogin";
  }

  @PostMapping("/user/login")
  public String login(Users user, HttpServletRequest request) {
    try {
      UsernamePasswordAuthenticationToken token =
        new UsernamePasswordAuthenticationToken(
          user.getUsername(),
          user.getPassword()
        );

      Authentication authentication = authenticationManager.authenticate(token);

      if (authentication.isAuthenticated()) {
        SecurityContext context = SecurityContextHolder.createEmptyContext();

        context.setAuthentication(authentication);
        SecurityContextHolder.setContext(context);

        request
          .getSession(true)
          .setAttribute(
            HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY,
            context
          );
        return "redirect:/user";
      }
    } catch (Exception e) {
      // TODO: handle exception
      System.out.println(e.getMessage());
    }

    return "userlogin";
  }
}
