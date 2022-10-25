package com.yedam.java.main.service;

import java.util.List;

public interface MainService {
	public List<MainVO> getMainList();
	
	public int insertMember(MainVO vo);
	
	public List<MainVO> getAdminList();
}
