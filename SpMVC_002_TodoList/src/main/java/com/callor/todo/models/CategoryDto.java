package com.callor.todo.models;

import lombok.NoArgsConstructor;

import lombok.AllArgsConstructor;

import lombok.ToString;

import lombok.Setter;

import lombok.Getter;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class CategoryDto {

	private String cat_code;
	private String cat_name;

}
