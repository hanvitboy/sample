package com.globalin.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.globalin.controller.MemberController;
import com.globalin.domain.MemberRecVO;
import com.globalin.mapper.MemberRecMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class sqltest {
	
	private static Logger log = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberRecMapper mapper;
	
	
	
	@Test
	public void test() {
	
		MemberRecVO mv = new MemberRecVO();
		mv.setIdx(101);
		mv.setD1(333);
		mapper.update(mv);
		
		}
	
	//	@Test
//	public void insertTest() {
//		MemberVO board = new MemberVO();
//		board.setId("mango");
//		board.setName("holy");
//		board.setAge(37);
//		board.setGender("여성");
//		board.setHeight(126);
//		board.setWeight(18);
//		board.setPw("1541");
//		mapper.insert(board);
//	}
	
	
	

}
