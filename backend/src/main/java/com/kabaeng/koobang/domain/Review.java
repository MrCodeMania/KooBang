package com.kabaeng.koobang.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;


@Data
@ApiModel(value = "ConsumerInfo : 소비자 정보")
public class Review {

    @NotNull
    @ApiModelProperty(value = "소비자 ID")
    private int id;

    @NotNull
    @ApiModelProperty(value = "소비자 E-mail")
    private String consumerEmail;

    @NotNull
    @ApiModelProperty(value = "소비자 비밀번호")
    private String consumerPassword;

    @NotNull
    @ApiModelProperty(value = "소비자 이름")
    private String consumerName;

    @NotNull
    @ApiModelProperty(value = "소비자 전화번호")
    private String consumerPhone;

}
