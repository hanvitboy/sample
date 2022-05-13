package com.globalin.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.globalin.domain.Ticket;
import com.google.gson.Gson;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration//controller테스ㅡ입니다.
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"}) //설정파일위치
public class SampleControllerTest {

	//web 전용 설정 불러오기
	@Autowired
	private WebApplicationContext ctx;
	
	
	//테스트할때는 가짜 MVC 패턴을 만들어주는 mock mvc
	private MockMvc mockMvc;
	
	//테스트 시작전에 항상 실행될 메소드
	
	@Before
	public void setup() {
		//가짜 mvc 객체 만들어주기
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test
	public void test() throws Exception {
		Ticket ticket = new Ticket();
		ticket.setTno(123);
		ticket.setOwner("admin");
		ticket.setGrade("aaa");
		
		/*
		 * {
		 *  "tno" : "123",
		 *  "owner" : "admin",
		 *  "grade" : "aaa"
		 * }
		 *  이걸 이렇게 바꿔야하는데 그래주는게 gson. 이걸사용해 객체를 json형식으로 바꿔준다.
		 * */
	
		String jsonStr= new Gson().toJson(ticket);
		System.out.println(jsonStr);
		
		mockMvc.perform( //post요처을 보내고. 요청타입은 json 타입
				post("/sample/ticket").contentType(MediaType.APPLICATION_JSON)
				.content(jsonStr) //요청내용은 jsonstr
				).andExpect(status().is(200)); //그결과가 200일 것이라고 예측
	
	}
}
