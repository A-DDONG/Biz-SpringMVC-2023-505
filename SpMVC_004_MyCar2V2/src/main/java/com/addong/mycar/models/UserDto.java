package com.addong.mycar.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UserDto {
	
	private String username;	//	varchar(15)
	private String password;	//	varchar(255)
	private String u_name;		//	varchar(20)
	private String u_nickname;	//	varchar(20)
	private String u_tel;		//	varchar(15)
	private String u_role;		//	varchar(15)

}
