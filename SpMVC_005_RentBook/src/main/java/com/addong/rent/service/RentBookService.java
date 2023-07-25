package com.addong.rent.service;

import java.util.List;

import com.addong.rent.models.RentBookDto;

public interface RentBookService {
	public List<RentBookDto> selectAll();
}
