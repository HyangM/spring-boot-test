package com.cos.springboot.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ResponseUserDto extends ResponseDto{
	
	private ResponseDto status;
	private int id;
	private String password;
	private String email;
}
