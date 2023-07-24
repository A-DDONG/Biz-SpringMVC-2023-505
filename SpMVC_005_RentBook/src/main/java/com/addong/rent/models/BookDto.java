package com.addong.rent.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
 * STS ctrl+shift+y : 모두 소문자
 * 	   ctrl+shift+x : 모두 대문자
 */
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class BookDto {
	
	private String b_code; //	varchar(13)
	private String b_name; //	varchar(125)
	private String b_author; //	varchar(125)
	private String b_comp; //	varchar(125)
	private int b_year; //	int
	private int b_iprice; //	int
	private int b_rprice; //	int

}
