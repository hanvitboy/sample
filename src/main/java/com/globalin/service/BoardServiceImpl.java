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
		return mapper.getpage(bno);
	}

	@Override
	public int register(BoardVO board) {
		return mapper.insert(board);
	}

	@Override
	public int modify(BoardVO board) {
		return mapper.update(board);
	}

	@Override
	public boolean remove(int bno) {
		int updateResult = mapper.delete(bno);
		boolean result = false;// 리턴해줄값
		if (updateResult > 0) {
			
			result = true;

		}
		return result;
	}

	@Override
	public List<BoardVO> getList() {
		return mapper.getList();
	}

	@Override
	public void boardHit(int bno) throws Exception {
		mapper.boardHit(bno);
	}

	@Override
	public List<BoardVO> getListPaging(Criteria cri) {
		return mapper.getListPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		return mapper.getTotal(cri);
	}

	@Override
	public int likeTotal(int bno) {
		return mapper.likeTotal(bno);
	}

	@Override
	public int likeTotalM(int bno) {
		return mapper.likeTotalM(bno);
	}

	@Override
	public int commentTotal(int bno) {
		return mapper.commentTotal(bno);
	}

}
