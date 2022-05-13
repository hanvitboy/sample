package com.globalin.ex02;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.globalin.domain.BoardVO;
import com.globalin.service.BoardService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardServiceTest {
	
		@Autowired
		private BoardService service;
		
		@Test
		public void testExist() {
			assertNotNull(service);
		}
		
//		@Test
//		public void testRegist() {
//			BoardVO board = new BoardVO();
//			board.setTitle("새서비스글");
//			board.setContent("새서비스내용");
//			board.setWriter("서비스작가");
//			
//			service.register(board);
//			
//			System.out.println("생성된 게시물의 번호 :" +board.getBno());
//		}	
		
		
//		@Test
//		public void testall() {
//			
//			for(BoardVO b: service.getList()) {
//				System.out.println(b);
//			}
//			
//		}
//		@Test
//		public void testread() {
//			System.out.println(service.get(3));
		
//			
//		}
		
//		@Test
//		public void testupdate() {
//			BoardVO b = new BoardVO();
//			b.setContent("새업");
//			b.setTitle("새새업");
//			b.setWriter("새새새업");
//			b.setBno(3);
//		  	if(b == null){return;}
//			service.modify(b);
//			
//			
//		}
		@Test
		public void testdelete() {

			service.remove(3);
		}
}
