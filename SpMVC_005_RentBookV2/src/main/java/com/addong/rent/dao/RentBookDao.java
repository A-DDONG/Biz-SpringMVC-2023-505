package com.addong.rent.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.addong.rent.models.RentBookDto;
import com.addong.rent.models.RentBookVO;

public interface RentBookDao {

		public List<RentBookVO> selectAll();
		public RentBookDto findById(long id);
		
		public List<RentBookVO> findByBCode(String bcode);
		public List<RentBookVO> findByMCode(String mcode);
		
		public int insert(RentBookVO dto);
		public int update(RentBookVO dto);
		
		public void create_rent_table(String dumy);
}
