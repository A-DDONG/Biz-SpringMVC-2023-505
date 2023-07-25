package com.addong.rent.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.addong.rent.config.QualifierConfig;
import com.addong.rent.dao.RentBookDao;
import com.addong.rent.models.RentBookDto;
import com.addong.rent.service.RentBookService;

@Service(QualifierConfig.SERVICE.RETNBOOK_V1)
public class RentBookServiceImplV1 implements RentBookService {

	private final RentBookDao rentBookDao;
	
	public RentBookServiceImplV1(RentBookDao rentBookDao) {
		this.rentBookDao = rentBookDao;
	}

	@Override
	public List<RentBookDto> selectAll() {
		return rentBookDao.selectAll();
	}
	
}
