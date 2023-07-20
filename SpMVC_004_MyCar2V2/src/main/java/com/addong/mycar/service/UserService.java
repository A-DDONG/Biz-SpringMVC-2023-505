package com.addong.mycar.service;

import com.addong.mycar.models.UserDto;

public interface UserService {

	public int join(UserDto userDto);

	public UserDto login(UserDto userDto) throws Exception;

}
