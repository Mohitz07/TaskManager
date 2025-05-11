package com.projectvoid.springboot.myfirstwebapp.register;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.projectvoid.springboot.myfirstwebapp.user.User;
import com.projectvoid.springboot.myfirstwebapp.user.UserService;

import jakarta.validation.Valid;

@Controller
@SessionAttributes("name")
public class RegistrationController {

    private final UserService userService;

    public RegistrationController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/register")
    public String showRegistrationPage(ModelMap model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(@Valid User user, BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return "register";
        }

        if (userService.isUsernameTaken(user.getUsername())) {
            result.rejectValue("username", "username.taken", "Username is already taken");
            return "register";
        }

        userService.save(user);
        model.put("registrationSuccess", "Registration successful! Please log in.");
        return "redirect:login"; // Redirect to the login page
    }

    @GetMapping("/login")
    public String showLoginPage() {
        return "login";
    }
}
