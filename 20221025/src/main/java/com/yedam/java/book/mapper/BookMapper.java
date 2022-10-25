package com.yedam.java.book.mapper;

import java.util.List;

import com.yedam.java.book.service.BookVO;

public interface BookMapper {
	public List<BookVO> getBookList();
	
	//insert에는 2개의 매퍼 등록 필요
	//번호를 조회하는 mapper
	public BookVO getBookNo();
	//실제로 등록하는 mapper
	public int insertBook(BookVO bookVO);
	
	//대여현황을 가져올 매퍼 추가
	public BookVO getRentalInfo();
}
