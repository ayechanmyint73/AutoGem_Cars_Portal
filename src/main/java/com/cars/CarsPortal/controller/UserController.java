package com.cars.CarsPortal.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cars.CarsPortal.dao.Car;
import com.cars.CarsPortal.dao.User;
import com.cars.CarsPortal.service.UserService;


@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/login")
	public String loginPage(Model model) {
		model.addAttribute("user", new User());
		return "login";
	}
	
	@GetMapping("/login_error")
	public String onLoginError(Model model) {
		String error_message = "Incorrect username or password. Please try again.";
		
		model.addAttribute("error_string", error_message);
		
		return "login";
	}
	
	@GetMapping("/register")
	public String newUserForm(Map<String, Object> model) {
    	System.out.println("new Login Controller");
		User user = new User();
		model.put("user", user);
		return "register";
	}
    
    //Save register user to database
	@PostMapping("/save")
	public String saveStore(@ModelAttribute("user") User user, Model model) {
		System.out.println("/save Login Controller");
		userService.save(user);
		String register_success = "<h5> Registeration Successful! </h5>";
		model.addAttribute("register_success", register_success);
		return "login";
	}
	
	
    @GetMapping("/all_users")
	@PreAuthorize("hasRole('Administrators')")
    public String viewUsers(Model model) {
        List<User> users = userService.listAll();
        if(!CollectionUtils.isEmpty(users)) {
            model.addAttribute("userlists", users);
        }
        return "all_users";
    }
    
    @GetMapping("/editUser")
	@PreAuthorize("hasAnyRole('Users', 'Administrators')")
    public String editUserForm(Authentication authentication, Model model) {
        // Get the username of the currently logged-in user
        String username = authentication.getName();
        
        // Retrieve the user from the database based on the username
        User user = userService.getUserByName(username);
        
        // Check if the user exists
        if (user == null) {
            // Handle the case where the user is not found (optional)
            return "error"; // Or redirect to an error page
        }
        
        // Pass the user object to the view for editing
        model.addAttribute("user", user);
        
        // Return the view name for the edit user form
        return "profile"; // Replace "edit_user" with the actual view name
    }
    
	
	@GetMapping("/home")
	public String homePage(Model model) {
		model.addAttribute("user", new User());
		return "home";
	}
	
	@GetMapping("/profile")
	public String indexPage(Model model) {
		model.addAttribute("user", new User());
		return "profile";
	}
	
	@GetMapping("/aboutUs")
	public String aboutPage(Model model) {
		model.addAttribute("user", new User());
		return "aboutUs";
	}
	
	@GetMapping("/contactUs")
	public String contactPage(Model model) {
		model.addAttribute("user", new User());
		return "contactUs";
	}
	
	
	
}
