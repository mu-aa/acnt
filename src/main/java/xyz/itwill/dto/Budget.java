package xyz.itwill.dto;

import lombok.Data;

/*
이름     널?       유형           
------ -------- ------------ 
B_NO   NOT NULL NUMBER(2)     PK
B_CATE          VARCHAR2(20) 
B_WON           NUMBER(9)   
 */

@Data
public class Budget {
	private Integer bno;
	private String bcate;
	private Integer bwon;
}