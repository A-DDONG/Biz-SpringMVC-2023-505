package com.addong.address.dao;

import java.util.List;

import com.addong.address.models.HobbyByAidVO;

public interface HobbyDao {
	
	public List<HobbyByAidVO> findHobbyByAID(String aid);
	
}
