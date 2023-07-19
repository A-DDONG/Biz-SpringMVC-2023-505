package com.addong.mycar.service;

import java.util.List;

import com.addong.mycar.models.CarDto;

public interface CarService {

	public CarDto findTachoByCarNum(String carnum);

	public int insert(CarDto carDto);

	public List<CarDto> selectAll();
}
