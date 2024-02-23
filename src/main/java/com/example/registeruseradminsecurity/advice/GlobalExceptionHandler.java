package com.example.registeruseradminsecurity.advice;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.example.registeruseradminsecurity.dto.ResponseDto;
import com.example.registeruseradminsecurity.exception.EntityNotFoundException;

@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ResponseDto EntityNotFoundExceptionHandler(EntityNotFoundException exception) {
        return new ResponseDto(404, "Error", exception.getMessage());
    }

}
