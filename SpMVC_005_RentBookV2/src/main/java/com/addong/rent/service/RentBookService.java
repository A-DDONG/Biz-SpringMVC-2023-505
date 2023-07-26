package com.addong.rent.service;

import java.util.List;

import com.addong.rent.models.RentBookDto;
import com.addong.rent.models.RentBookVO;

public interface RentBookService {
	public List<RentBookVO> selectAll();

	public int insert(RentBookVO rentBookVO);
}
