package com.cars.CarsPortal.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import jakarta.servlet.DispatcherType;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity
public class SecurityConfig {

	@Bean
	PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@SuppressWarnings("deprecation")
	@Bean
	SecurityFilterChain filterChain(HttpSecurity http) throws Exception{
		http
		.csrf(
				csrf -> csrf.disable()
				)
		.authorizeRequests( auth -> {
            auth.requestMatchers("/").permitAll();
            auth.requestMatchers("/login").permitAll();
            auth.requestMatchers("/view_contacts").hasRole("VIEW_CONTACT");
            auth.requestMatchers("/contact_form").hasRole("ADD_CONTACT");
    	})
		
		.formLogin(
				form -> form
				.loginPage("/login")
				.loginProcessingUrl("/login")
				.failureUrl("/login_error")
				.defaultSuccessUrl("/home")
				.permitAll()
				)
		.logout(
				logout -> logout
				.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
				.permitAll()
				);
		
		return http.build();
	}
	
}
