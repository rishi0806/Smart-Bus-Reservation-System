package com.demo.controller;

import com.demo.model.Bus;
import com.demo.model.Route;
import com.demo.service.BusService;
import com.demo.service.RouteService;
import java.util.List;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@AllArgsConstructor
public class BusController {

  private final BusService busService;
  private final RouteService routeService;

  @GetMapping("/bus")
  public String getBusDashboard(
    @RequestParam(value = "page", required = false) String page,
    @RequestParam(required = false) Long id,
    Model model
  ) {
    if (page == null) {
      page = "pages/bus/getbus.jsp";
    } else if (page.equals("updatebus") && id != null) {
      model.addAttribute("bus", busService.getBusById(id));
      page = "pages/bus/" + page + ".jsp";
    } else {
      page = "pages/bus/" + page + ".jsp";
    }

    model.addAttribute("page", page);

    return "bus";
  }

  @ModelAttribute("routes")
  public List<Route> getAllRoutes() {
    return routeService.getAllRoute();
  }

  @ModelAttribute("buses")
  public List<Bus> getBuses() {
    return busService.findallBus();
  }

  @PostMapping("/savebus")
  public String saveBus(@ModelAttribute Bus b, @RequestParam Long routeId) {
    busService.addBus(b, routeId);
    return "redirect:bus";
  }

  @PostMapping("/updatebus")
  public String updatebus(
    Bus bus,
    @RequestParam Long id,
    @RequestParam Long routeId
  ) {
    busService.updateBus(id, routeId, bus);
    return "redirect:/bus";
  }

  @GetMapping("/bus/delete")
  public String deletebus(@RequestParam Long id) {
    busService.deleteBusById(id);
    return "redirect:/bus";
  }
}
