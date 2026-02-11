package com.demo.service;

import com.demo.dao.BusRepository;
import com.demo.dao.RoutesRepository;
import com.demo.model.Bus;
import com.demo.model.Route;
import jakarta.transaction.Transactional;
import java.util.List;
import java.util.Optional;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
@Transactional
public class BusServiceImpl implements BusService {

  private final BusRepository busRepository;
  private final RoutesRepository routeRepo;
  private final RouteService routeService;

  @Override
  public void addBus(Bus bus, Long routeId) {
    Route route = routeRepo
      .findById(routeId)
      .orElseThrow(() -> new RuntimeException("No Route Found"));

    bus.setRoute(route);

    busRepository.save(bus);
  }

  @Override
  public void addBus(Bus bus) {
    busRepository.save(bus);
  }

  @Override
  public void updateBus(Long id, Long routeId, Bus bus) {
    Bus b = busRepository
      .findById(id)
      .orElseThrow(() -> new RuntimeException("No Bus Found"));
    if (
      b.getRoute().getId() != null &&
      routeId != null &&
      b.getRoute().getId() != routeId
    ) {
      System.out.println("trying to save....");
      Route r = routeService.getRouteById(routeId);
      b.setRoute(r);
    }
    System.out.println("came next");
    b.setBusName(bus.getBusName());
    b.setArrivalTime(bus.getArrivalTime());
    b.setDepartureTime(bus.getDepartureTime());
    b.setBusType(bus.getBusType());
    b.setPrice(bus.getPrice());
    b.setSeats(bus.getSeats());
    b.setAvailableSeats(bus.getAvailableSeats());
    b.setDriverName(bus.getDriverName());
  }

  @Override
  public void deleteBusById(Long id) {
    busRepository.deleteById(id);
  }

  @Override
  public Bus getBusById(Long id) {
    return busRepository.findById(id).get();
  }

  @Override
  public List<Bus> findallBus() {
    // TODO Auto-generated method stub
    return busRepository.findAll();
  }

  @Override
  public Long getCountOfBuses() {
    return busRepository.count();
  }

  @Override
  public List<Bus> findBusFromRouteFromAndTo(String from, String to) {
    List<Bus> buses = busRepository.findBusByRouteFromandRouteTo(from, to);
    System.out.println("found Buses" + buses.size());
    return buses;
  }

  @Override
  public Boolean checkCanBook(Long id, Integer seatsRequested) {
    Optional<Bus> bus = busRepository.findByIdAndAvailableSeatsGreaterThanEqual(
      id,
      seatsRequested
    );
    if (bus.isEmpty()) throw new RuntimeException("No Seats Available");

    return true;
  }
}
