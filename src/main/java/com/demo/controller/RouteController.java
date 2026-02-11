package com.demo.controller;

import com.demo.model.Route;
import com.demo.service.RouteService;
import java.util.List;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@AllArgsConstructor
public class RouteController {

  private final RouteService routeService;

  @GetMapping("/routedashboard")
  public String getRouteDashboard(
    @RequestParam(value = "page", required = false) String page,
    @RequestParam(required = false) Long id,
    Model model
  ) {
    if (page == null || page.equals("getroutes")) {
      page = "pages/getroutes.jsp";
    } else if (page.equals("updateroute")) {
      model.addAttribute("route", routeService.getRouteById(id));
      page = "pages/" + page + ".jsp";
    } else {
      page = "pages/" + page + ".jsp";
    }
    model.addAttribute("page", page);

    return "route";
  }

  @ModelAttribute("routes")
  public List<Route> getAllRoutes() {
    return routeService.getAllRoute();
  }

  @GetMapping("/route/delete/{id}")
  public String deleteRoute(@PathVariable Long id) {
    routeService.deleteRoutById(id);
    return "redirect:/routedashboard";
  }

  @PostMapping("route/add")
  public String addRoute(Route route) {
    routeService.addRoute(route);
    return "redirect:/routedashboard";
  }

  @PostMapping("/route/update/{id}")
  public String update(Route route, @PathVariable Long id) {
    routeService.updateRoute(id, route);
    return "redirect:/routedashboard";
  }
}
