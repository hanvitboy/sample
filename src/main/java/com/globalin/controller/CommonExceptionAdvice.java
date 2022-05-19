package com.globalin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

//컨트롤러에서 예외를 처리하는 방법
//@ExceptionHandler + @ControllerAdivce
//AOP (Aspect Oriented Programming 관점 지향 프로그래밍)
//공통된 관심사, 핵심적인 관심사를 나눠서 프로그래밍 - 발전된 객체지향프로그래밍
//핵심적인 관심사는 -> Controller의 하나하나 메소드의 실행내용
//공통된 관심사는 - > Controller의 모든 메소드에서 발생하는 예외를 처리해주겠다.
//원래대로라면 Controller의 메소드들 마다 예외를 각각 처리 해줘야 하지만,
//AOP에서는 공통된 관심사를 핵심적인 관심사 앞뒤에 붙여서 조립같은 일을 실행
//핵심적인 관심사 전에 공통적으로 실행이 필요한 부분 도는 후에실행이필요한 부분을 추가하여 실행할수있도록

@ControllerAdvice
//스프링의 컨트롤러에서 발생하는 예외를 처리하는 클래스입니다.
public class CommonExceptionAdvice {
	
	private static Logger log = LoggerFactory.getLogger(CommonExceptionAdvice.class);

	//이 메소드가 예외를 처리해주는 메소드이다.
	//()Exception.class = > 처리할 예외의 타입을 명시 익셉션만쓰면 모든 에러 처리. 런타임써도되고 io 써도되고 null등등
	@ExceptionHandler(Exception.class)
	public String except(Exception ex, Model model) {
		
			log.error("Exception ....." + ex.getMessage());
			model.addAttribute("exception", ex);
			return "error_page";
	}
	
	@ExceptionHandler(NoHandlerFoundException.class)
	@ResponseStatus(HttpStatus.NOT_FOUND)
	public String handle404(NoHandlerFoundException ex) {
		
		
		//return 값은 jsp 파일이름(접두사접미사붙여서실행됨)
		return "custom404";
		
	}
	
	
}
