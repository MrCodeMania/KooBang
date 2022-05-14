package com.kabaeng.koobang.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;

@Data
public class ReviewDTO {
    @NotNull
    @ApiModelProperty(value = "소비자 ID")
    private int id;
}