package com.project.jobnom.common.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Career {

	private int carNo;
	private String carName;
	private String carDept;
	private String carRank;
	private String carTerm;
	private String carTermend;
}
