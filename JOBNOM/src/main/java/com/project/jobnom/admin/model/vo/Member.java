package com.project.jobnom.admin.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	private int mem_no;
	private String mem_email;
	private String mem_check;
	private String mem_membership;
	private int cate_no2;
	private String res_name;
	private String res_phone;
	private String res_gender;
	private int res_birth;
	private int res_car;
}
