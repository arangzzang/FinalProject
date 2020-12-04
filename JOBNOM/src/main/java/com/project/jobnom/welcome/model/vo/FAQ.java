package com.project.jobnom.welcome.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FAQ {

	private int faqNo;
	private String faqQuestion;
	private String faqAnswer;
	private Date faqWritedate;
}
