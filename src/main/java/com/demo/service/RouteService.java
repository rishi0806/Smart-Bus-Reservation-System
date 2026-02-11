package com.demo.service;

import com.demo.model.Route;
import java.util.List;

public interface RouteService {
  void addRoute(Route route);
  void updateRoute(Long id, Route route);
  void deleteRoutById(Long id);
  Route getRouteById(Long id);
  List<Route> getAllRoute();
  Long getCountOfRoutes();
}
