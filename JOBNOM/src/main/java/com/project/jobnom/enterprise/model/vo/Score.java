package com.project.jobnom.enterprise.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Score {

	private int review_satisfaction;
	private int review_welfare;
	private int review_promotion;
	private int review_executive;
}
