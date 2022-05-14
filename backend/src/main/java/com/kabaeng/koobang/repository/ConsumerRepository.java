package com.kabaeng.koobang.repository;

import com.kabaeng.koobang.domain.Consumer;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ConsumerRepository extends JpaRepository<Consumer, Long> {
    Optional<Consumer> findById(Long id);
}
