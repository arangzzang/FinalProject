package com.project.jobnom.admin.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Admin {
	
	private int adminNo;
	private String adminEmail;
	private String adminPw;
	private int type;// 1
}
