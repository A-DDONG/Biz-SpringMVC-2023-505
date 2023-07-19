package com.addong.mycar.persistance;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.addong.mycar.models.CarDto;

public interface CarDao {
	public int insert(CarDto carDto);
	public CarDto findTachoByCarNum(String carNum);
	
	@Select(" SELECT * FROM tbl_carmanager ORDER BY c_edate DESC, c_etime DESC")
	public List<CarDto> selectAll();
}
