package com.kabaeng.koobang.dto;

import com.kabaeng.koobang.domain.Consumer;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;

@Data
@Getter
@Setter
@NoArgsConstructor
@ApiModel(value = "ConsumerDTO : 소비자 DTO")
public class ConsumerDTO {
    @NotNull
    @ApiModelProperty(value = "소비자 ID")
    private Long id;

    @NotNull
    @ApiModelProperty(value = "소비자 E-mail")
    private String consumerEmail;

    @NotNull
    @ApiModelProperty(value = "소비자 이름")
    private String consumerName;

    @NotNull
    @ApiModelProperty(value = "소비자 전화번호")
    private String consumerPhone;

    public ConsumerDTO(Consumer consumer){
        this.id = consumer.getId();
        this.consumerEmail = consumer.getConsumerEmail();
        this.consumerName = consumer.getConsumerName();
        this.consumerPhone = consumer.getConsumerPhone();
    }
}
