package com.kabaeng.koobang.controller;

import com.kabaeng.koobang.dto.ConsumerDTO;
import com.kabaeng.koobang.service.ConsumerService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiParam;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import io.swagger.annotations.ApiOperation;

@Api("ConsumerController")
@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequestMapping("/consumer")
public class ConsumerController {

    private static final Logger logger = LoggerFactory.getLogger(ConsumerController.class);
    private static final String SUCCESS = "success";
    private static final String FAIL = "fail";

    @Autowired
    private ConsumerService consumerService;

    @ApiOperation(value = "소비자 정보", notes = "소비자 정보를 반환한다.")
    @GetMapping
    public ResponseEntity<ConsumerDTO> getConsumer(@RequestParam("consumerId") @ApiParam(value = "소비자 ID", required = true) long consumerId) throws Exception {
        logger.info("getConsumer - 호출");
        ConsumerDTO consumerDTO = consumerService.getConsumer(consumerId);
        return new ResponseEntity<ConsumerDTO>(consumerDTO, HttpStatus.OK);
    }

    @ApiOperation(value = "소비자 정보", notes = "소비자를 등록한다.")
    @PostMapping
    public ResponseEntity<String> PostConsumer() throws Exception {
        logger.info("PostConsumer - 호출");
        ConsumerDTO consumerDTO = new ConsumerDTO();
        return new ResponseEntity<String>("", HttpStatus.OK);
    }

    @ApiOperation(value = "소비자 정보", notes = "소비자 정보를 변경한다.")
    @PutMapping
    public ResponseEntity<String> PutConsumer() throws Exception {
        logger.info("PutConsumer - 호출");
        ConsumerDTO consumerDTO = new ConsumerDTO();
        return new ResponseEntity<String>("", HttpStatus.OK);
    }

    @ApiOperation(value = "소비자 정보", notes = "소비자 정보를 삭제한다.")
    @DeleteMapping
    public ResponseEntity<String> DeleteConsumer() throws Exception {
        logger.info("DeleteConsumer - 호출");
        ConsumerDTO consumerDTO = new ConsumerDTO();
        return new ResponseEntity<String>("", HttpStatus.OK);
    }
}
