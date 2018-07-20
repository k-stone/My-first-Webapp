package com.javasampleapproach.angularjpapostgresql.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.javasampleapproach.angularjpapostgresql.model.Customer;
import java.lang.String;

public interface CustomerRepository extends CrudRepository<Customer, Long> {
	List<Customer> findByLastName(String lastName);
	
}