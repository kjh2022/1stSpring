package com.yedam.java.main.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.java.main.mapper.MainMapper;
import com.yedam.java.main.service.MainService;
import com.yedam.java.main.service.MainVO;
@Service
public class MainServiceImpl implements MainService {
	@Autowired
	MainMapper mapper;
	//메인-전체회원정보조회 5컬럼
	@Override
	public List<MainVO> getMainList() {
		return mapper.getMainList();
	}
	//관리자 페이지에서 회원정보 조회 3컬럼
	@Override
	public List<MainVO> getAdminList() {
		return mapper.getAdminList();
	}
	//회원 등록
	@Override
	public int insertMember(MainVO vo) {
		return mapper.insertMember(vo);
	}

}
