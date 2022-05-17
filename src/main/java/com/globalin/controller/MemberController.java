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
  
	@PostMapping("/withdraw")
	public String remove(@RequestParam("id") String id, RedirectAttributes rttr, String writer) {
		if(service.remove(id)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "home";
	}
 
 @PostMapping("/modify")
	public String modify(MemberVO member, RedirectAttributes rttr) {
		
		if(service.modify(member) == true) {
			//1회용 속성인 flashAttribute 추가
			rttr.addFlashAttribute("result", "success");
		}
		
		return "home";
			
	}
 
 
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("id") String id, Model model) {
		//게시물의 정보를 전달
		//서비스에서 member 정보 가져온 다음에
		//model에 넣어주면 된다.
		MemberVO member= service.get(id);	
		model.addAttribute("member", member);
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
			out.println("<script>alert('대체 뭐함');</script>");
			out.flush();
			return "loginpage";
		}
				
		return "home";
	
	}




}
