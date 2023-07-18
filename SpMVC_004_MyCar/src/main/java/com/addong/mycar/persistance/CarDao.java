package com.addong.mycar.persistance;

import com.addong.mycar.models.CarDto;

public interface CarDao {
	public int insert(CarDto carDto);
	public CarDto findTachoByCarNum(String carNum);
}
