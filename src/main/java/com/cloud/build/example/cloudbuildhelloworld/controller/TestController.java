package com.cloud.build.example.cloudbuildhelloworld.controller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @RequestMapping(value = "/test", method = RequestMethod.GET,
            produces = MediaType.APPLICATION_JSON_VALUE)
    public String getHelloWorld() {
        return "Hello Mandathiii........";
    }

    public void m1() {}
}
