package com.globalin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.globalin.domain.MemberRecVO;
import com.globalin.domain.MemberVO;
import com.globalin.service.MemberRecService;
import com.globalin.service.MemberService;

@Controller
@RequestMapping("/*")
public class MemberController {

	@Autowired
	private MemberService service;
	
	@Autowired
	private MemberRecService service2;
	
	private static Logger log = LoggerFactory.getLogger(MemberController.class); 
	
	@RequestMapping("/listpage")
	public void list(Model model) {
		model.addAttribute("list" , service.getList());
		
	}
	
	@PostMapping("/addinfo")
	public String addinfo(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MemberVO mem = new MemberVO();
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		
		mem.setId(id);
		mem.setPw(pw);
		mem.setName(name);
		
		req.setAttribute("member", mem);
		
		return "registpage2";
		
	}
	
	
	@PostMapping("/register")
	public String register(MemberVO member, MemberRecVO mv, HttpServletRequest req, HttpServletResponse resp, HttpSession session) throws IOException {
	 	service.register(member);
	 	service2.register(mv);
	 	resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<script>alert('ご加入ありがとうございます。'); </script>");
		out.flush();
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		MemberVO mem = service.login(id, pw);
		MemberRecVO mv2 = service2.get(mem.getIdx());
		session.setAttribute("user_kcal", mv2);
		session.setAttribute("login_user", mem);
		
		return "home";
	}
	
	@PostMapping("/savekcal")
	public String savekcal(HttpServletRequest req, HttpServletResponse resp, HttpSession session) throws IOException {
	
		MemberRecVO mv = (MemberRecVO)session.getAttribute("user_kcal");
		//MemberVO member = (MemberVO) session.getAttribute("login_user");
		
		//int idx = member.getIdx();
		int cal = Integer.parseInt(req.getParameter("cal"));
		
		if(mv.getNext() == 1) {
		    mv.setNext(2);
		    mv.setD1(cal);
		}
		else if(mv.getNext() == 2) {
			mv.setNext(3);
			mv.setD2(cal);
		}
		else if(mv.getNext() == 3) {
			mv.setNext(4);
			mv.setD3(cal);
		}
		else if(mv.getNext() == 4) {
			mv.setNext(5);
			mv.setD4(cal);
		}
		else if(mv.getNext() == 5) {
			mv.setNext(6);
			mv.setD5(cal);
		}
		else if(mv.getNext() == 6) {
			mv.setNext(7);
			mv.setD6(cal);
		}
		else if(mv.getNext() == 7) {
			mv.setNext(1);
			mv.setD7(cal);
		}

		service2.modify(mv);
		
		int result = 0;
		if(mv.getNext()==1) 
			{result = 7;}
				else{
				result=	mv.getNext()-1;}
				
		
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<script>alert('"+result+"回目のスロットにカロリーデーターを保存しました!'); </script>");
		out.flush();
		
		
		return "kcalcalpage";
	}
  
	@PostMapping("/deletekcal")
	public String deletekcal(HttpServletRequest req, HttpServletResponse resp, HttpSession session) throws IOException {
	
		MemberRecVO mv = (MemberRecVO)session.getAttribute("user_kcal");
		//MemberVO member = (MemberVO) session.getAttribute("login_user");
		
		//int idx = member.getIdx();
		
		if(mv.getNext() == 1) {
			mv.setNext(7);
		    mv.setD7(0);
		}
		else if(mv.getNext() == 2) {
			mv.setNext(1);
			mv.setD1(0);
		}
		else if(mv.getNext() == 3) {
			mv.setNext(2);
			mv.setD2(0);
		}
		else if(mv.getNext() == 4) {
			mv.setNext(3);
			mv.setD3(0);
		}
		else if(mv.getNext() == 5) {
			mv.setNext(4);
			mv.setD4(0);
		}
		else if(mv.getNext() == 6) {
			mv.setNext(5);
			mv.setD5(0);
		}
		else if(mv.getNext() == 7) {
			mv.setNext(6);
			mv.setD6(0);
		}

		service2.modify(mv);
		
		int result = 0;
		if(mv.getNext()==2) 
			{result = 7;}
				else{
				result=	mv.getNext()-2;}
				
		
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<script>alert('"+mv.getNext()+"回目のスロットのカロリーデーターをリセットしました!'); </script>");
		out.flush();
		
		
		return "kcalcalpage";
	}
	
 
 @PostMapping("/modify")
	public String modify(MemberVO member, MemberRecVO mv, HttpServletRequest req, HttpSession session,HttpServletResponse resp) throws IOException {
	    String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		
		service.modify(member);
		MemberVO mem = service.login(id, pw);
		MemberRecVO mv2 = service2.get(mem.getIdx());
		session.setAttribute("user_kcal", mv2);
		session.setAttribute("login_user", mem);
	
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<script>alert('ユーザー情報を更新しました。'); </script>");
		out.flush();
		
		
		return "home";
			
	}
 
 
 
	@PostMapping("/withdraw")
	public String remove(HttpSession session, HttpServletResponse resp, RedirectAttributes rttr) throws Exception
	{	MemberVO member = (MemberVO) session.getAttribute("login_user");
	    
		service.remove(member.getId());
		service2.remove(member.getIdx());
		session.invalidate();
				
		return "home";
	}
	
	
	
	@PostMapping("/login")
	public String login(MemberRecVO mv, HttpServletRequest req, HttpServletResponse resp, HttpSession session) throws Exception {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		MemberVO mem = service.login(id, pw);
		
		if(mem != null) {
			//id,pw가 검증되었다면
			MemberRecVO mv2 = service2.get(mem.getIdx());
			session.setAttribute("user_kcal", mv2);
			session.setAttribute("login_user", mem);
		}else {
			//없는데?
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('IDとPWをもう一度確認お願いします。');</script>");
			out.flush();
			return "loginpage";
		}
				
		return "home";
	
	}
	
	
	
	@PostMapping("/login2")
	public String login2(MemberRecVO mv, HttpServletRequest req, HttpServletResponse resp, HttpSession session) throws Exception {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		MemberVO mem = service.login(id, pw);
		
		
		if(mem != null) {
			//id,pw가 검증되었다면
			MemberRecVO mv2 = service2.get(mem.getIdx());
			session.setAttribute("login_user", mem);
			session.setAttribute("user_kcal", mv2);
			
		}else {
			//없는데?
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('IDとPWをもう一度確認お願いします。');</script>");
			out.flush();
			return "loginpage2";
		}
				
		return "kcalcalpage";
	
	}
	
	
	
	@PostMapping("/login3")
	public String login3(MemberRecVO mv, HttpServletRequest req, HttpServletResponse resp, HttpSession session) throws Exception {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		MemberVO mem = service.login(id, pw);
		
		
		if(mem != null) {
			//id,pw가 검증되었다면
			MemberRecVO mv2 = service2.get(mem.getIdx());
			session.setAttribute("login_user", mem);
			session.setAttribute("user_kcal", mv2);
			
		}else {
			//없는데?
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('IDとPWをもう一度確認お願いします。');</script>");
			out.flush();
			return "loginpage3";
		}
				
		return "redirect:/board/boardpage?";
	
	}
	
	
	@GetMapping("/oauth")
		public String kakaoRegist(@RequestParam(value = "code", required = false) String code, Model model ) throws Exception {
		
		String access_Token = service.getAccessToken(code);
		HashMap<String, Object> userInfo = service.getUserInfo(access_Token);
		model.addAttribute("nickname" , userInfo.get("nickname"));
		model.addAttribute("kakaoid",userInfo.get("id"));
		
		return "oauth";
		}
	
	
	@GetMapping("/kakaolog")
	public String kakaoLog(@RequestParam(value = "code", required = false) String code, Model model, HttpSession session, HttpServletResponse resp) throws Exception {
	
	
	String access_Token = service.getLoginAccessToken(code);
	HashMap<String, Object> userInfo = service.getLoginUserInfo(access_Token);
	model.addAttribute("kakaoid",userInfo.get("id"));
	model.addAttribute("nickname" , userInfo.get("nickname"));
	
	MemberVO mem = service.kakaologin((String) userInfo.get("id"));
	
	if(mem != null) {
		//id,pw가 검증되었다면
		MemberRecVO mv2 = service2.get(mem.getIdx());
		session.setAttribute("login_user", mem);
		session.setAttribute("user_kcal", mv2);
		
	}else {
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<script>alert('情報がございません。加入ページへ移動します。');</script>");
		out.flush();
		return "rspage";
	}

	return "home";
	
	}
	

	@GetMapping("/kakaolog2")
	public String kakaoLog2(@RequestParam(value = "code", required = false) String code, Model model, HttpSession session, HttpServletResponse resp) throws Exception {
	
	String access_Token = service.getLogin2AccessToken(code);
	HashMap<String, Object> userInfo = service.getLoginUserInfo(access_Token);
	model.addAttribute("kakaoid",userInfo.get("id"));
	model.addAttribute("nickname" , userInfo.get("nickname"));
	
	MemberVO mem = service.kakaologin((String) userInfo.get("id"));
	
	if(mem != null) {
		//id,pw가 검증되었다면
		MemberRecVO mv2 = service2.get(mem.getIdx());
		session.setAttribute("login_user", mem);
		session.setAttribute("user_kcal", mv2);
		
	}else {
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<script>alert('情報がございません。加入ページへ移動します。');</script>");
		out.flush();
		return "rspage";
	}

	return "kcalcalpage";
	
	}
	
	
	@GetMapping("/kakaolog3")
	public String kakaoLog3(@RequestParam(value = "code", required = false) String code, Model model, HttpSession session, HttpServletResponse resp) throws Exception {
	
	String access_Token = service.getLogin3AccessToken(code);
	HashMap<String, Object> userInfo = service.getLoginUserInfo(access_Token);
	model.addAttribute("kakaoid",userInfo.get("id"));
	model.addAttribute("nickname" , userInfo.get("nickname"));
	
	MemberVO mem = service.kakaologin((String) userInfo.get("id"));
	
	if(mem != null) {
		//id,pw가 검증되었다면
		MemberRecVO mv2 = service2.get(mem.getIdx());
		session.setAttribute("login_user", mem);
		session.setAttribute("user_kcal", mv2);
		
	}else {
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<script>alert('情報がございません。加入ページへ移動します。');</script>");
		out.flush();
		return "rspage";
	}

	return "redirect:/board/boardpage?";
	
	}
	
	
	
	@RequestMapping("/checkId")
	public void checkId(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		String id = req.getParameter("id");
		MemberVO member = service.get(id);
		String result = "";
		if(member != null) {
			//아이디중복 (사용불가)
			result = "{\"result\" : false}";
		}else {
			//사용가능
			result = "{\"result\" : true}";
		}
		resp.getWriter().print(result);
		
		
		
		
	}
	
	
	
	
	@PostMapping("/findpw")
	public String findpw(HttpServletRequest req, HttpServletResponse resp, HttpSession session) throws Exception {
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String gender = req.getParameter("gender");
		
		MemberVO mem = service.findpw(id, name, gender);
		
		if(mem != null) {
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('"+ mem.getName()+"様の暗証番号 : "+ mem.getPw() +"');</script>");
			out.flush();
			return "loginpage";
		}else {
			//없는디? 
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('一致する情報がありません。'); </script>");
			out.flush();
			return "findpwpage";
		}
	}
}


