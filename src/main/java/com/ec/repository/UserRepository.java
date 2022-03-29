package com.ec.repository;

import com.ec.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository

public interface UserRepository extends JpaRepository<User, Integer> {
    @Query("SELECT u FROM User u WHERE u.email = :email ")
    public User getUserByUserName(@Param("email") String email);

    @Query("SELECT u FROM User u WHERE u.email = :email AND u.password = :password")
    public User getUserByEmailAndPassword(@Param("email") String email, @Param("password") String password);
    
    @Modifying
    @Query("update User u set u.name = :name, u.email = :email, u.address = :address, u.phone_no = :phone_no, u.image = :image where u.id = :id")
    public void setUserInfoById( @Param("name") String name, @Param("email") String email, @Param("address") String address, @Param("phone_no") String phone_no, @Param("image") String image, @Param("id") int userId);
}
