package com.project.jobnom.resume.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Awards {
	//활동 및 수상내역
	private int awaNo;
	private int resNo;
	private String awaName;
	private Date awaTerm;
	private Date awaTermend;
	private String awaContents;
	private String awaYn;
}
