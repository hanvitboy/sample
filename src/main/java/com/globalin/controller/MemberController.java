package com.globalin.controller;

import java.io.PrintWriter;

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

import com.globalin.domain.MemberVO;
import com.globalin.service.MemberService;

@Controller
@RequestMapping("/*")
public class MemberController {

	@Autowired
	private MemberService service;
	
	private static Logger log = LoggerFactory.getLogger(MemberController.class); 
	
	@GetMapping("/list")
	public void list(Model model) {
		System.out.println(service.getList());
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
	
	@GetMapping("/register")
	public void register() {
		
	}
	
	@PostMapping("/register")
	public String register(MemberVO member, RedirectAttributes rttr, HttpServletRequest req) {
	 	log.info(req.getParameter("actindex"));
	 	log.info(member.toString());
	 	service.register(member);
		rttr.addFlashAttribute("result", member.getId());
		return "home";
	}
  
	
 
 @PostMapping("/modify")
	public String modify(MemberVO member, RedirectAttributes rttr) {
		
		service.modify(member);
		
		return "home";
			
	}
 
 
 
	@PostMapping("/withdraw")
	public String remove(HttpSession session) throws Exception
	{	MemberVO member = (MemberVO) session.getAttribute("login_user");
		
		service.remove(member.getId());
		session.invalidate();
		
		return "home";
	}
	
	@PostMapping("/login")
	public String login(HttpServletRequest req, HttpServletResponse resp, HttpSession session) throws Exception {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		MemberVO mem = service.login(id, pw);
		
		if(mem != null) {
			//id,pw가 검증되었다면
			session.setAttribute("login_user", mem);
			log.warn(mem.toString());			
		}else {
			//없는데?
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('다시 확인해주세요');</script>");
			out.flush();
			return "loginpage";
		}
				
		return "home";
	
	}
	@PostMapping("/findpw")
	public String findpw(HttpServletRequest req, HttpServletResponse resp, HttpSession session) throws Exception {
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String gender = req.getParameter("gender");
		
		log.info("findpw con : " + id + " / " + name + " / " + gender);
		MemberVO mem = service.findpw(id, name, gender);
		
		if(mem != null) {
			log.info("Member Exist");
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('"+ mem.getName()+"님의 비밀번호 : "+ mem.getPw() +"');</script>");
			out.flush();
			return "loginpage";
		}else {
			//없는디? 
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('일치하는 정보가 없습니다'); </script>");
			out.flush();
			return "findpwpage";
		}
	}
}


