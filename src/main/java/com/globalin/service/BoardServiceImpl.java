package com.globalin.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globalin.domain.BoardVO;
import com.globalin.domain.Criteria;
import com.globalin.mapper.BoardMapper;

//@component 어노테이션과 같은 종류의 어노테이션
//서비스역할을 하는 빈 객체 라는 뜻
@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardMapper mapper;
	
	private static Logger log = LoggerFactory.getLogger(BoardServiceImpl.class);
	
	@Override
	public void register(BoardVO board) {
		log.info("게시물 등록: " + board);
		mapper.insertSelectKey(board);
	}

	@Override
	public BoardVO get(int bno) {
		log.info("게시물 ");
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {
		log.info("게시물 수정");
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(int bno) {
		log.info("게시물 삭제");
		int upresult = mapper.delete(bno);
		if(upresult >0 ) {
			return true;
		}
		return false;
	}

	@Override
	public List<BoardVO> getList() {
		log.info("게시글 전체조회");
		return mapper.getList();
	}

	@Override
	public List<BoardVO> getList(Criteria cri) {
		log.info("게시글 페이지 조회:" + cri);
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("전체 게시글 갯수 조회");
		return mapper.getTotalCount(cri);
	}

}
