package com.icia.shopping.dto;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Data
public class ShoppingDTO {
//    private final static DateTimeFormatter DTF = DateTimeFormatter.ofPattern("yyyyMMdd");
    private Long custno;
    private String custname;
    private String phone;
    private String address;
    private String joindate;
    private String grade;
    private String city;

//    {
//        this.joindate = DTF.format(LocalDateTime.now());
//    }


}
