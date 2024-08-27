package com.cars.CarsPortal.service;

import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cars.CarsPortal.dao.User;
import com.cars.CarsPortal.repository.RoleRepository;
import com.cars.CarsPortal.repository.UserRepository;

@Service
@Transactional
public class UserService {

	@Autowired
	UserRepository repo;

	@Autowired
    private RoleRepository roleRepository;
	
	public void save(User user) {
	    // Retrieve the current user from the database
		user.setRoles(new HashSet<>(roleRepository.findBySpecificRoles("Users")));
		 
        repo.save(user);	
	}


	public List<User> listAll() {
		return (List<User>) repo.findAll();
	}

	public User get(Long id) {
		return repo.findById(id).get();
	}

	public void delete(Long id) {
		repo.deleteById(id);
	}
	
	public User getUserByName(String username) {
		return repo.findByUserName(username);
	}
}
