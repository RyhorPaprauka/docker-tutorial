package com.mbicycle.dockertest.controller;


import com.mbicycle.dockertest.service.TestService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor(onConstructor = @__(@Autowired))
public class TestController {

    private final TestService testService;

    @GetMapping("/visit")
    public ResponseEntity<Long> visits() {
        return ResponseEntity.ok(testService.increaseAndReturn().getAmount());
    }
}
