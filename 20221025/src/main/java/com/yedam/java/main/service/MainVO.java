package com.yedam.java.main.service;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MainVO {
	private String uesrId; //유저id
	private String userName; //이름
	private String userPassword; //비밀번호
	private String userNic; //닉네임
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date userDate; //가입일자
	private String userPhone; //전화번호
	private String userEmail; //이메일
	private String userType; //유저 유형(권한 0-관리자, 1-회원)
}
