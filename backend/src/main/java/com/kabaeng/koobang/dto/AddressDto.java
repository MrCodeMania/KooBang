package com.kabaeng.koobang.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;

@Data
public class AddressDto {
    @NotNull
    @ApiModelProperty(value = "μλΉμ ID")
    private int id;
}
