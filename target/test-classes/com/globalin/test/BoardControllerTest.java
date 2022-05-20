package com.globalin.test;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.globalin.domain.BoardVO;
import com.globalin.mapper.BoardMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardControllerTest {
	private static Logger log = LoggerFactory.getLogger(BoardControllerTest.class);

	@Autowired
	private BoardMapper mapper;

	
//	@Test
//	public void testRegister() {
//		
//		BoardVO board= new BoardVO();
//		board.setContent("monmonmon");
//		board.setTitle("test3");
//		board.setWriter("yunnam");
//		mapper.insert(board);
//		
//		System.out.println(mapper.read(2));
//	}
	
	
//	@Test
//	public void testModify() {
//		BoardVO board= new BoardVO();
//		board.setBno(1);
//		board.setContent("새로작성하는글2");
//		board.setTitle("ne222");
//		board.setWriter("13");
//		mapper.update(board);
//		
//	}
//	@Test
//	public void testRead() {
//		System.out.println(mapper.read(2));
//	}
//	@Test
//	public void testDelete() {
//		mapper.delete(3);
//		
//	}
	@Test
	public void testgetList() {
		System.out.println(mapper.getList());
	
	}
}
