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
}
