package com.addong.address.service;

import com.addong.address.models.UserDto;

public interface UserService {

	public UserDto findById(String id);
	public String userLogin(UserDto userDto);
	public int userJoin(UserDto userDto);
}
