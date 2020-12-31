package com.project.jobnom.resume.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Education {
	//학력사항
	private int eduNo;
	private int resNo;
	private String eduName;
	private String eduMajor;
	private String eduAttend;
	private Date eduTerm;
	private Date eduTermend;
	private String eduContents;
}
