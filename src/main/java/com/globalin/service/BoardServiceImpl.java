package com.globalin.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globalin.domain.BoardVO;
import com.globalin.domain.Criteria;
import com.globalin.domain.LikeVO;
import com.globalin.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	private static Logger log = LoggerFactory.getLogger(BoardServiceImpl.class);
	
	@Autowired
	private BoardMapper mapper;

	@Override
	public BoardVO getpage(int bno) throws Exception {
		log.info("get...");
		return mapper.getpage(bno);
	}

	@Override
	public int register(BoardVO board) {
		log.info("register...:"+board);
		return mapper.insert(board);
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

	@Override
	public List<BoardVO> getListPaging(Criteria cri) {
		log.info("getListPaging...");
		return mapper.getListPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("getTotal...");
		return mapper.getTotal(cri);
	}

	@Override
	public int likeTotal(int bno) {
		log.info("likeTotal...");
		return mapper.likeTotal(bno);
	}

	@Override
	public int likeTotalM(int bno) {
		log.info("likeTotalM...");
		return mapper.likeTotalM(bno);
	}

	@Override
	public int commentTotal(int bno) {
		log.info("commentTotal...");
		return mapper.commentTotal(bno);
	}

}
