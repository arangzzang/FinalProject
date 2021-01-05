package com.project.jobnom.enterprise.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Applicant {

	private int resNo;
	private String resName;
	private int resBirth;
	private String resGender;
	private int appNo;
	private String resOpencheck;
	private Date supportDay;
}
