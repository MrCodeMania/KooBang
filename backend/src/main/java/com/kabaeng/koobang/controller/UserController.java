package com.kabaeng.koobang.controller;

import io.swagger.annotations.Api;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Api("UserController")
@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequestMapping("/user")
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
    private static final String SUCCESS = "success";
    private static final String FAIL = "fail";

    @ApiOperation(value = "어르신 정보", notes = "어르신 정보를 반환한다.")
    @GetMapping
    public ResponseEntity<String> getUser() throws Exception {
        logger.info("getUser - 호출");
        return new ResponseEntity<String>("", HttpStatus.OK);
    }

}
