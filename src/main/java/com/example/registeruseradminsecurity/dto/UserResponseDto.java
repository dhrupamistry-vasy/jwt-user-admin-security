package com.example.registeruseradminsecurity.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserResponseDto {

    private String username;
    private String name;
    private String email;
    private String contactno;

    private String address;
    private String city;
}
