package com.project.jobnom.enterprise.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Banner {
   private int ent_no;
   private String bann_title;
   private String bann_path;
   private Date uploaddate;
}