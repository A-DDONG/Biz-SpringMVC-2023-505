package com.callor.hello.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.callor.hello.models.UserDto;
import com.callor.hello.service.UserService;

@Service
public class UserServiceImplV1 implements UserService{
	
	/*
	 * List<UserDto> userList 객체를 생성하고
	 * 임의로 생성한 3명의 User 정보를 add 하기
	 * User 리스트를 return 하기
	 */
	@Override
	public List<UserDto> selectAll() {
		
		List<UserDto> userList = new ArrayList<UserDto>();
		UserDto userDto = new UserDto();
		userDto.setUsername("xi");
		userDto.setPassword("1234");
		userDto.setName("시진핑");
		userDto.setTel("010-1111-1111");
		userDto.setAddr("중화인민공화국");
		userDto.setAge(70);
		userList.add(userDto);
		
		userDto = new UserDto();
		userDto.setUsername("trump");
		userDto.setPassword("1234");
		userDto.setName("트럼프");
		userDto.setTel("010-2222-2222");
		userDto.setAddr("미합중국");
		userDto.setAge(77);
		userList.add(userDto);
		
		// setter 를 사용하여 데이터 추가하기
		userDto = new UserDto();
		userDto.setUsername("kim");
		userDto.setPassword("1234");
		userDto.setName("김정은");
		userDto.setTel("010-3333-333");
		userDto.setAddr("조선민주주의인민공화국");
		userDto.setAge(39);
		userList.add(userDto);
		
		// field 생성자를 사용하여 데이터 추가하기
		// field 생성자를 사용하는 경우 원하는 변수에 값이 정확히 저장되는지 확인하기 어렵다
		userDto = new UserDto("putin","1234","푸틴","010-4444-4444","러시아",70);
		userList.add(userDto);
			
		return userList;
	}

	@Override
	public UserDto findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int input(UserDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

}
