package com.yedam.java.board.service;

import java.util.List;
import java.util.Map;

public interface BoardService {
	//번호로 입력받아ㅓㅅ 게시글 조회
	public int getBoardNo();
	//전체 조회
	public List<BoardVO> selectBoardList();
	//단건조회
	public BoardVO selectBoardInfo(BoardVO bVO);
	//등록
	public Map<String, Object> insertBoardInfo(BoardVO bVO);
	//수정
	public Map<String, Object> updateBoardInfo(BoardVO bVO);
	//삭제
	public Map<String, Object> deleteBoardInfo(BoardVO bVO);
	
}
