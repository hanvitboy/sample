package com.globalin.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.globalin.domain.MemberVO;
import com.globalin.mapper.MemberMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTest {

	@Autowired
	private MemberMapper mapper;
	
//	@Test
//	public void insertTest() {
//		
//		MemberVO board= new MemberVO();
//		board.setId("새로작성하는글2");
//		board.setName("newconten");
//		board.setPw("newman");
//		board.setAge(13);
//		board.setHeight(180);
//		board.setWeight(90);
//		board.setGender("man");
//		mapper.insert(board);
//		System.out.println("1");
//	}
	
//	@Test
//	public void testUpdate() {
//		MemberVO board= new MemberVO();
//		board.setId("새로작성하는글2");
//		board.setPw("ne222");
//		board.setAge(13);
//		board.setHeight(1110);
//		board.setWeight(90);
//		board.setGender("man");
//		
//		mapper.update(board);
//	}
	
	@Test
	public void testSelect() {
		
		System.out.println(mapper.getList());
	}
	
}
