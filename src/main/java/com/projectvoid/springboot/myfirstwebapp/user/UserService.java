package com.projectvoid.springboot.myfirstwebapp.user;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public UserService(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public void save(User user) {
        System.out.println("Saving user: " + user); // Add this log
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        try {
            userRepository.save(user);
            System.out.println("User saved successfully: " + user.getUsername()); // Add this log
        } catch (Exception e) {
            System.err.println("Error saving user: " + e.getMessage()); // Add this log
            e.printStackTrace();
            throw e; // Re-throw the exception for now
        }
    }
    public boolean isUsernameTaken(String username) {
        return userRepository.findByUsername(username) != null;
    }

    // ... other methods
}