package com.globalin.service;

import java.util.List;

import com.globalin.domain.BoardVO;

public interface BoardService {
	
	// 하나 가져오기
	public BoardVO getpage(int bno) throws Exception;
	
	// 삽입하기
	public void register(BoardVO board);
	
	// 수정하기
	public int modify(BoardVO board);
	
	// 삭제하기
	public boolean remove(int bno);
	
	// 리스트가져오기
	public List<BoardVO> getList();
	
	public void boardHit(int bno) throws Exception;

}
