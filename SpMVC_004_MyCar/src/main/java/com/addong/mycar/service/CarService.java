package com.addong.mycar.service;

import com.addong.mycar.models.CarDto;

public interface CarService {

	public CarDto findTachoByCarNum(String carnum);
}
