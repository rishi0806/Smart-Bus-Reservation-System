package com.demo.service;

import java.util.List;

import com.demo.model.Bus;

public interface BusService {

	void addBus(Bus bus,Long routeId);
	void addBus(Bus bus);
	
	void updateBus(Long id,Long routeId,Bus bus);
	void deleteBusById(Long id);
	Bus getBusById(Long id);
	List<Bus> findallBus();
	Long getCountOfBuses();
	
	List<Bus> findBusFromRouteFromAndTo(String from,String to);
	
	Boolean checkCanBook(Long id,Integer seatsRequested);
}
