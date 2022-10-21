package com.yedam.java.free.service;

import java.util.List;
import java.util.Map;

//fbs interface의 기능은 mapper와 같을 수도 있고 다를 수도있따. 필요에 따라서 처리하기 떄문
public interface FBService {
	//입력될 게시글 조회
	public int getBoardNo();
	//전체조회
	public List<FBVO> selectBoardList();
	//단건조회
	public FBVO selectBoardInfo(FBVO fbVO);
	//등록
	public Map<String, Object> insertBoardInfo(FBVO fbVO);
	//수정
	public Map<String, Object> updateBoardInfo(FBVO fbVO);
	//삭제
	public Map<String, Object> deleteBoardInfo(FBVO fbVO);
}
