package com.demo.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.model.Bus;

@Repository
public interface BusRepository extends JpaRepository<Bus, Long> {

//	@Query("""
//			select b from Bus b  join fetch b.route r
//			where Lower(r.routeFrom)=Lower(:routeFrom) and Lower(r.routeTo)=Lower(:routeTo)
//						""")
//	List<Bus> findBusByRouteFromandRouteTo(@Param("routeFrom") String routeFrom, @Param("routeTo") String routeTo);
	
	@Query("""
		       select b from Bus b join fetch b.route r
		       where lower(r.routeFrom) like lower(concat('%', :routeFrom, '%'))
		         and lower(r.routeTo) like lower(concat('%', :routeTo, '%'))
		       """)
		List<Bus> findBusByRouteFromandRouteTo(
		        @Param("routeFrom") String routeFrom,
		        @Param("routeTo") String routeTo);


	Optional<Bus> findByIdAndAvailableSeatsGreaterThanEqual(Long id, Integer seatsRequested);


}
