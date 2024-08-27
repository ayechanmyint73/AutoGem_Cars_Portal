package com.cars.CarsPortal.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.cars.CarsPortal.dao.Role;
import com.cars.CarsPortal.dao.User;
import com.cars.CarsPortal.repository.UserRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService{

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
        System.out.println("Login UserName is "+username);
        
        User user = userRepository.findByUserName(username);
        
        if(user == null) {
            throw new UsernameNotFoundException("user " + username + " is invalid. Please try again.");
        }

        org.springframework.security.core.userdetails.User.UserBuilder userBuilder = org.springframework.security.core.userdetails.User.builder();
        
        String[] roleNames= user.getRoles().stream().map(Role::getName).toArray(String[]::new);
        
        System.out.println("Role Name is "+roleNames);
        
        return userBuilder.username(user.getUserName())
                        .password(user.getPassword())
                        .roles(roleNames)
                        .passwordEncoder(passwordEncoder::encode)
                        .build();
	}
}
