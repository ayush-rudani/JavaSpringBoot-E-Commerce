package com.ec.config;

import com.ec.models.User;
import com.ec.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class UserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // fetching user from Database

        User user = userRepository.getUserByUserName(username);// here username -> email

        if (user == null) {
            throw new UsernameNotFoundException("User not found");
        }

        CustomUerDetails customUerDetails = new CustomUerDetails(user);

        return customUerDetails;
    }

}
