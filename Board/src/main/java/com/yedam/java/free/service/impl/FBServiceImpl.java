package com.yedam.java.free.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.java.free.mapper.FBMapper;
import com.yedam.java.free.service.FBService;
import com.yedam.java.free.service.FBVO;

@Service
public class FBServiceImpl implements FBService {
	@Autowired
	FBMapper fbMapper;
	
	
	@Override
	public int getBoardNo() {
		/* FBVO fbVO = fbMapper.getBoardNo(); */
		/* int bno = fbVO.getBno(); */
		/* return bno; */
		return fbMapper.getBoardNo().getBno();
	}

	@Override
	public List<FBVO> selectBoardList() {
		return fbMapper.getBoardList();
	}

	@Override
	public FBVO selectBoardInfo(FBVO fbVO) {
		return fbMapper.getBoardInfo(fbVO);
	}

	@Override
	public Map<String, Object> insertBoardInfo(FBVO fbVO) {
		int count = fbMapper.insertBoard(fbVO);
		return getResult(count, fbVO);
	}

	@Override
	public Map<String, Object> updateBoardInfo(FBVO fbVO) {
		int count = fbMapper.updateBoard(fbVO);
		return getResult(count, fbVO);
	}

	@Override
	public Map<String, Object> deleteBoardInfo(FBVO fbVO) {
		int count = fbMapper.deleteBoard(getBoardNo());
		return getResult(count, fbVO);
	}
	public Map<String, Object> getResult(int count, FBVO fbVO) {
		Map<String, Object> result = new HashMap<>();
		result.put("result", count);
		result.put("data", fbVO);
		return result;
	}
}