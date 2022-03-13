package com.ec.service;

import com.ec.models.User;
import com.ec.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    // public User saveUser(User)

}
