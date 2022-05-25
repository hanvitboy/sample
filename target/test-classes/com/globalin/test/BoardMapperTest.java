package com.globalin.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.globalin.controller.BoardController;
import com.globalin.domain.Criteria;
import com.globalin.mapper.BoardMapper;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardMapperTest {
	
	private static Logger log = LoggerFactory.getLogger(BoardMapperTest.class);
	
	@Autowired
	private BoardMapper mapper;
	
	 @Test
     public void testGetListPaging() {
         
         Criteria cri = new Criteria();
         
         cri.setPageNum(1);
                          
         log.info(mapper.getListPaging(cri).toString());
         
     }

}
