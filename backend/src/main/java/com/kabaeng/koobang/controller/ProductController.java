package com.kabaeng.koobang.controller;

import com.kabaeng.koobang.dto.ConsumerDto;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Api("ConsumerController")
@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequestMapping("/consumer")
public class ProductController {

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
    private static final String SUCCESS = "success";
    private static final String FAIL = "fail";

    @ApiOperation(value = "소비자 정보", notes = "소비자 정보를 반환한다.")
    @GetMapping
    public ResponseEntity<ConsumerDto> getConsumerInfoDto() throws Exception {
        logger.info("getConsumerInfoDto - 호출");
        ConsumerDto consumerDto = new ConsumerDto();
        return new ResponseEntity<ConsumerDto>(consumerDto, HttpStatus.OK);
    }


}
