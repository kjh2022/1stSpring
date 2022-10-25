package com.yedam.java.book.service;

import java.util.List;

public interface BookService {
	public List<BookVO> selectBookList();
	//번호조회
	public BookVO selectBookNo();
//	등록
	public int insertBookInfo(BookVO bookVO);
}
