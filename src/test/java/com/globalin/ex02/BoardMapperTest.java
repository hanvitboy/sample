package com.globalin.ex02;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.globalin.domain.BoardVO;
import com.globalin.domain.Criteria;
import com.globalin.mapper.BoardMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardMapperTest {

	@Autowired
	private BoardMapper mapper;
	
	@Test
	public void testPaging() {
		Criteria cri = new Criteria();
		cri.setKeyword("lion");
		cri.setType("T");
		//뉴로만들면 기본생성자설정된대로 1페이지 1번으로설정
		
		List<BoardVO> list = mapper.getListWithPaging(cri);
		
		for(BoardVO board: list) {
			System.out.println(board);
		}
	}
	
//	@Test
//	public void testGetList() {
//		
//		List<BoardVO> list = mapper.getList();
//		for(BoardVO b : list) {
//			System.out.println(b);
//		}
//		
//		
//	}
	
//	@Test
//	public void insertTest() {
//		
//		BoardVO board= new BoardVO();
//		board.setTitle("새로작성하는글");
//		board.setContent("newconten");
//		board.setWriter("newman");
//		
//		mapper.insert(board);
//	@Test
//	public void testInsertSelectKey() {
//		BoardVO board = new BoardVO();
//		board.setTitle("newkekeke");
//		board.setContent("newnononococon");
//		board.setWriter("hanvitman");
//		
//		mapper.insertSelectKey(board);
//		System.out.println(board);
//	}
//	

//		@Test
//		public void testUpdate() {
//			BoardVO board= new BoardVO();
//			board.setTitle("lion");
//			board.setContent("lion");
//			board.setWriter("lion");
//			board.setBno(6);
//			
//			mapper.update(board);
//		}
//		@Test
//		public void testDelete() {
//			mapper.delete(5);
//			
//		}
		
//		@Test
//		public void testSelect() {
//			
//			System.out.println(mapper.read(4));
//		}
	
}
