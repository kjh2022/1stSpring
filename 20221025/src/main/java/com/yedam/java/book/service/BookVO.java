package com.yedam.java.book.service;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class BookVO {
	private int bookNo;
	private String bookName;
	private String bookCovering;
	@DateTimeFormat(pattern = "yyyy-MM-dd")//setter를 쓸때 앞의 포맷을 가져야함 
	private Date bookDate;
	private int bookPrice;
	private String bookPublisher;
	private String bookInfo;
	
	//대여관련 필드로 AS로 사용할 컬럼명(필드)을 따로 추가해도됨
	private int totalPrice;
	private int rentalCount;
}
