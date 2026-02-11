package com.demo.service;

import java.util.Optional;

import com.demo.model.Admin;

public interface AdminService     {
	
	public Optional<Admin> findAdmin(String username);
	

}
