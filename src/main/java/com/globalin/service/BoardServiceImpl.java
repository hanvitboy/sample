package com.globalin.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globalin.domain.BoardVO;
import com.globalin.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	private static Logger log = LoggerFactory.getLogger(BoardServiceImpl.class);
	
	@Autowired
	private BoardMapper mapper;

	@Override
	public BoardVO getpage(int bno) throws Exception {
		log.info("get...");
		//mapper.boardHit(bno);
		return mapper.getpage(bno);
	}

	@Override
	public void register(BoardVO board) {
		log.info("register...:"+board);
		mapper.insert(board);
	}

	@Override
	public int modify(BoardVO board) {
		log.info("modify...");
		return mapper.update(board);
	}

	@Override
	public boolean remove(int bno) {
		log.info("remove...");
		int updateResult = mapper.delete(bno);
		boolean result = false;// 리턴해줄값
		if (updateResult > 0) {
			
			result = true;

		}
		return result;
	}

	@Override
	public List<BoardVO> getList() {
		log.info("getlist...");
		return mapper.getList();
	}

	@Override
	public void boardHit(int bno) throws Exception {
		log.info("boardHit...");
		mapper.boardHit(bno);
	}

}
