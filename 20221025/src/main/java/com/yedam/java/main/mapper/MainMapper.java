package com.yedam.java.main.mapper;

import java.util.List;

import com.yedam.java.main.service.MainVO;

public interface MainMapper {
	//메인페이지 - 전체회원 조회 5가지 컬럼
	public List<MainVO> getMainList();
	//관리자 페이지에서 회원 아이디, 이름, 가입일자 조회
	public List<MainVO> getAdminList();
	//회원가입(등록)
	public int insertMember(MainVO vo);
	
}
