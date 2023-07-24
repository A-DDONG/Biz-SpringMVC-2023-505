package com.addong.rent.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.addong.rent.config.QualifierConfig;
import com.addong.rent.dao.BookDao;
import com.addong.rent.models.BookDto;
import com.addong.rent.service.BookService;

@Service(QualifierConfig.SERVICE.BOOK_V1)
public class BookServiceImplV1 implements BookService {

	protected final BookDao bookDao;

	public BookServiceImplV1(BookDao bookDao) {
		this.bookDao = bookDao;
	}

	@Autowired
	public void create_table() {
		try {
			bookDao.create_book_table(null);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	@Override
	public List<BookDto> selectAll() {
		// TODO Auto-generated method stub
		return bookDao.selectAll();
	}

	@Override
	public int insert(BookDto bookDto) {
		return bookDao.insert(bookDto);
	}

	@Override
	public BookDto findById(String bcode) {
		return bookDao.findById(bcode);
	}

	@Override
	public int update(BookDto bookDto) {
		return bookDao.update(bookDto);
	}

}
