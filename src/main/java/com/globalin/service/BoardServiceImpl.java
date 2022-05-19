package com.globalin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.globalin.domain.BoardVO;

public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardMapper mapper;

	@Override
	public void register(BoardVO board) {
		
	}

	@Override
	public BoardVO get(int bno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modify(BoardVO board) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean remove(int bno) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<BoardVO> getList() {
		// TODO Auto-generated method stub
		return null;
	}

}
