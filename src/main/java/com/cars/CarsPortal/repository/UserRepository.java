package com.cars.CarsPortal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cars.CarsPortal.dao.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long>{

	User findByUserName(String userName);
	User findByEmail(String email);
}
