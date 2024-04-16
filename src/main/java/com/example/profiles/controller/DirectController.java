package com.example.profiles.controller;

import com.example.profiles.models.User;
import com.example.profiles.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class DirectController {
    @Autowired
    UserService userService;
    @RequestMapping("/home")
    public String home() {
        return "home";
    }

    @GetMapping("/new")
    public String newUser(){
        return "newUser";
    }

}
