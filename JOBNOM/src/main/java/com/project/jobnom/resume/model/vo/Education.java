package com.project.jobnom.resume.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Education {

	private int eduNo;
	private String eduName;
	private String eduMajor;
	private String eduAttend;
	private Date eduTerm;
	private Date eduTermend;
}
