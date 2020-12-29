package com.project.jobnom.enterprise.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Support {
   
   private int app_no;
   private int mem_no;
   private int rec_no;
   
   private String rec_title;
   private String ent_name;
   private String rec_contents;
   private Date support_day;
   
   private String res_name;
   private String res_gender;
   private int res_birth;
   private String res_opencheck;

}