package com.project.jobnom.welcome.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FAQ {

	private int faqNo;
	private String faqQustion;
	private String faqAnswer;
}
