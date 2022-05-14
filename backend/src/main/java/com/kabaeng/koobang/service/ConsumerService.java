package com.kabaeng.koobang.service;

import com.kabaeng.koobang.domain.Consumer;
import com.kabaeng.koobang.dto.ConsumerDTO;
import com.kabaeng.koobang.repository.ConsumerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.NoSuchElementException;

@Service
public class ConsumerService {

    @Autowired
    ConsumerRepository consumerRepository;

    public ConsumerService(ConsumerRepository consumerRepository) {
        this.consumerRepository = consumerRepository;
    }

    public ConsumerDTO getConsumer(Long id) throws Exception {
        Consumer consumer = consumerRepository.findById(id).orElseThrow(() -> new NoSuchElementException());
        ConsumerDTO consumerDto = new ConsumerDTO(consumer);
        return consumerDto;
    }

}
