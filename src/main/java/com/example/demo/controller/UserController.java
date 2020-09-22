package com.example.demo.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping(path = "/user")
public class UserController {

    @GetMapping(path = "/byId/{id}")
    public Map createUser(@PathVariable("id") String id) {
        Map map = new HashMap();
        map.put("username", id);
        return map;
    }

}
