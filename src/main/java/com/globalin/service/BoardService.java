package com.globalin.service;

import java.util.List;

import com.globalin.domain.BoardVO;
import com.globalin.domain.Criteria;

public interface BoardService {

		//게시물 작성
	public void register(BoardVO board);
	
		//게시물 하나 조회
	public BoardVO get(int bno);
	
		//게시물 수정
	public boolean modify(BoardVO board);
	
		//게시물 삭제
	public boolean remove(int bno);
	
		//게시글 전체 조회
	public List<BoardVO> getList();

		//페이지처리 전체조회
	public List<BoardVO> getList(Criteria cri);


	//전체 게시글 갯수 구하기
	public int getTotal(Criteria cri);
}
