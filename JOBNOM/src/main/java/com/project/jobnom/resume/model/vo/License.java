package com.project.jobnom.resume.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class License {

	private int licNo;
	private String licName;
	private Date licTerm;
}
