package com.addong.mycar.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.addong.mycar.models.CarDto;
import com.addong.mycar.persistance.CarDao;
import com.addong.mycar.service.CarService;

@Service
public class CarServiceImplV1 implements CarService {

	protected final CarDao carDao;

	public CarServiceImplV1(CarDao carDao) {
		this.carDao = carDao;
	}

	@Override
	public CarDto findTachoByCarNum(String carnum) {
		return carDao.findTachoByCarNum(carnum);
	}

	@Override
	public int insert(CarDto carDto) {
		return carDao.insert(carDto);
	}

	@Override
	public List<CarDto> selectAll() {
		return carDao.selectAll();
	}

}
