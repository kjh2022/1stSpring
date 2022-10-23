package com.yedam.java.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yedam.java.board.service.BoardVO;

public interface BoardMapper {
	//전체
	public List<BoardVO> getBoardList();
	//단건
	public BoardVO getBoardInfo(BoardVO bVO);
	//입력
	public int insertBoard(BoardVO bVO);
	//수정
	public int updateBoard(BoardVO bVO);
	//삭제
	public int deleteBoard(@Param("bno") int boardNo);
	//번호로 게시글 조회
	public BoardVO getBoardNo();
}
