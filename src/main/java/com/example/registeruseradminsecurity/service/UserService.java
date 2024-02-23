package com.example.registeruseradminsecurity.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.example.registeruseradminsecurity.dto.UserDto;
import com.example.registeruseradminsecurity.dto.UserResponseDto;

import java.util.List;

public interface UserService extends UserDetailsService {
    void addNewUser(UserDto userDto);

    List<UserResponseDto> getAllUsers();

}
