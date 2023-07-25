package com.addong.rent.service;

import java.util.List;

import com.addong.rent.models.MemberDto;

public interface MemberService {

	public int insert(MemberDto memberDto) throws Exception;

	public String getNewCode();

	public List<MemberDto> selectAll();
	
	public MemberDto findById(String id);

	public int update(MemberDto memberDto) throws Exception;
}
