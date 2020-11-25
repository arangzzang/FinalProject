package com.project.jobnom.resume.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Awards {

	private int awaNo;
	private String awaName;
	private Date awaTerm;
	private Date awaTermend;
	private String awaYn;
}
