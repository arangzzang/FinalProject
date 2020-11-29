package com.project.jobnom.common.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Login {

	private String type;
	private String memEmail;
	private String memPw;
	
}
