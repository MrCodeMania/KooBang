package com.kabaeng.koobang.service;

import com.kabaeng.koobang.dto.ConsumerDTO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Service
public class ProductService {

    private static final Logger logger = LoggerFactory.getLogger(ProductService.class);
    private static final String SUCCESS = "success";
    private static final String FAIL = "fail";

    @ApiOperation(value = "소비자 정보", notes = "소비자 정보를 반환한다.")
    @GetMapping
    public ResponseEntity<ConsumerDTO> getConsumerInfoDto() throws Exception {
        logger.info("getConsumerInfoDto - 호출");
        ConsumerDTO consumerDto = new ConsumerDTO();
        return new ResponseEntity<ConsumerDTO>(consumerDto, HttpStatus.OK);
    }


}
