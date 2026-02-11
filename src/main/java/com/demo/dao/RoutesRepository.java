package com.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.model.Route;

@Repository
public interface RoutesRepository extends JpaRepository<Route, Long>{

}
