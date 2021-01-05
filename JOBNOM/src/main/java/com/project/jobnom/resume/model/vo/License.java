package com.project.jobnom.resume.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class License {
	//자격증 및 기타
	private int licNo;
	private int resNo;
	private String licName;
	private Date licTerm;
	private String licContents;
}
