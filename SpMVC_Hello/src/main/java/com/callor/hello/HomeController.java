package com.callor.hello;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.hello.models.AddressDto;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		model.addAttribute("name", "집에가고싶다");
		model.addAttribute("age", "집에");
		model.addAttribute("tel", "010-집에가-고싶다");
		return "home";
	}
	
	@RequestMapping(value="/hello")
	public String hello(Model model) {
		
		AddressDto addrDto = new AddressDto();
		addrDto.setName("성춘향");
		addrDto.setTel("010-2222-2222");
		addrDto.setAge(16);
		addrDto.setAddress("전라북도 남원시");
		
		model.addAttribute("ADDR",addrDto);
		
		// WEB-INF/views/hello.jsp 를 찾아서 rendering 해달라
		return "hello";
	}
	@RequestMapping(value="/user")
	public String user(Model model) {
		
		List<AddressDto> addrList = new ArrayList<AddressDto>();
		AddressDto addrDto = new AddressDto();
		addrDto.setName("시진핑");
		addrDto.setAge(70);
		addrDto.setTel("010-7979-7979");
		addrDto.setAddress("중화인민공화국");
		addrList.add(addrDto);
		
		addrDto = new AddressDto();
		addrDto.setName("다나카");
		addrDto.setAge(29);
		addrDto.setTel("010-2929-2929");
		addrDto.setAddress("도쿄도 가부키초");
		addrList.add(addrDto);

		addrDto = new AddressDto();
		addrDto.setName("트럼프");
		addrDto.setAge(77);
		addrDto.setTel("010-4444-4444");
		addrDto.setAddress("뉴욕 맨해튼");
		addrList.add(addrDto);
		
		for(AddressDto dto : addrList) {
			System.out.println(dto.toString());
		}
		
		model.addAttribute("ADDRS",addrList);
		
		return "user2";
	}
	
}
