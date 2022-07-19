package com.globalin.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

// 이 클래스를 스프링 환경에서 테스트 합니다.
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
// 컨트롤러를 위한 테스트 클래스 (웹 설정을 사용합니다.)
@WebAppConfiguration
public class BoardControllerTest {
	private static Logger log = LoggerFactory.getLogger(BoardControllerTest.class);
	
	//스프링의 웹 설정 불러오기
	//서블릿의 서블릿context 사용하기위해서 필요한 설정
	@Autowired
	private WebApplicationContext ctx;
	
	//MOCK UP 목업
	//내용이없고 껍데기만 비슷하게 만들어놓기 (프로토타입만들기)
	//mvc 패턴을 테스트하기 위해서 서버없이 동작해볼수 있도록 해주느 클래스
	private MockMvc mockMvc;
	//테스트 메소드 실행하기 전에 항상 먼저 실행되는 메소드를 처리 -> @Before 어노테이션
	//가짜 mvc를 만들어 주기 (기능만 테스트 할 것이다)
	//가짜로 url과 파라미터 등을 브라우저에서 사용하는 것처럼 Controller를 테스트
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
				
	}
	@Test
	public void testList() throws Exception {
		log.info(
			mockMvc.perform(MockMvcRequestBuilders.get("/board/list").param("pageNum", "2").param("amount","10")).andReturn()
			.getModelAndView().getModelMap().toString());
	}
	
//	@Test
//	public void testRegister() throws Exception{
//		String result = "";
//		result = mockMvc.perform(MockMvcRequestBuilders.post("/board/register")
//				.param("title" , "MOCK TEST TITLE")
//				.param("content" , "MOCK TEST CONTENT")
//				.param("writer" , "MOCK USER"))
//				.andReturn().getModelAndView().getViewName();
//		//viewName: 다음에 갈 뷰 이름 (사용자가 볼 페이지 경로)
//		log.info(result);
//				 
//	}
	
	@Test
	public void testGet() throws Exception{
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/board/get")
				.param("bno" , "2"))
				.andReturn()
				.getModelAndView()
				.getModelMap()
				.toString()
				);
	}
//		@Test
//		public void testModify() throws Exception{
//			String result = "";
//			result = mockMvc.perform(MockMvcRequestBuilders.post("/board/modify")
//					.param("bno", "1")
//					.param("title" , "MOCK up TITLE")	
//					.param("content" , "MOCK up CONTENT")
//			          .param("writer" , "MOCK up USER"))
//					.andReturn().getModelAndView().getViewName();
//			log.info(result);
//		} 
		
		@Test
		public void testRemove() throws Exception{
			String result = "";
			result = mockMvc.perform(MockMvcRequestBuilders.post("/board/remove")
						.param("bno", "1"))
					.andReturn().getModelAndView().getViewName();
			log.info(result);
		}
		
		
	}
