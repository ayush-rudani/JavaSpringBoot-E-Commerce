package com.ec.service;

import java.util.List;

import javax.transaction.Transactional;

import com.ec.models.User;
import com.ec.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public User saveUser(User user) {
        return userRepository.save(user);
    }

    public List<User> fetchUserList() {
        return (List<User>) userRepository.findAll();
    }

    public User updateUser(User user, int id) {
        User user1 = userRepository.findById(id).get();
        user1.setName(user.getName());
        user1.setPhone_no(user.getPhone_no());
        user1.setEmail(user.getEmail());
        user1.setAddress(user.getAddress());
        user1.setUser_type(user.getUser_type());
        return userRepository.save(user);
    }

    public User findUserByEmailAndPassword(String email, String password) {
        return userRepository.getUserByEmailAndPassword(email, password);
    }
    
    @Transactional
    public void updateUser(User user) {
    	userRepository.setUserInfoById(user.getName(), user.getEmail(), user.getAddress(), user.getPhone_no(), user.getImage(), user.getId());
    }
}
