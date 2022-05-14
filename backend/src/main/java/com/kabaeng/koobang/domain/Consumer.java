package com.kabaeng.koobang.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="consumer_info")
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ApiModel(value = "Consumer : 소비자 정보")
public class Consumer {

    @Id
    @ApiModelProperty(value = "소비자 ID")
    private Long id;

    @Column(name="consumer_email")
    @ApiModelProperty(value = "소비자 E-mail")
    private String consumerEmail;

    @Column(name="consumer_pwd")
    @ApiModelProperty(value = "소비자 비밀번호")
    private String consumerPassword;

    @Column(name="consumer_name")
    @ApiModelProperty(value = "소비자 이름")
    private String consumerName;

    @Column(name="consumer_phone")
    @ApiModelProperty(value = "소비자 전화번호")
    private String consumerPhone;

}
