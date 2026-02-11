package com.demo.service;

import com.demo.dao.RoutesRepository;
import com.demo.model.Route;
import java.util.List;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class RouteServiceImpl implements RouteService {

  private final RoutesRepository repository;

  @Override
  public void addRoute(Route route) {
    repository.save(route);
  }

  @Override
  public void updateRoute(Long id, Route route) {
    Route r = repository
      .findById(id)
      .orElseThrow(() -> new RuntimeException("No Route Found"));

    r.setRouteTo(route.getRouteTo());
    r.setDistance(route.getDistance());
    r.setRouteFrom(route.getRouteFrom());

    repository.save(r);
  }

  @Override
  public Long getCountOfRoutes() {
    // TODO Auto-generated method stub
    return repository.count();
  }

  @Override
  public void deleteRoutById(Long id) {
    repository.deleteById(id);
  }

  @Override
  public Route getRouteById(Long id) {
    return repository.findById(id).get();
  }

  @Override
  public List<Route> getAllRoute() {
    // TODO Auto-generated method stub
    return repository.findAll();
  }
}
