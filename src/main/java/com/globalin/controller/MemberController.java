package com.globalin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.globalin.domain.MemberVO;
import com.globalin.service.MemberService;

@Controller
@RequestMapping("/*")
public class MemberController {

	@Autowired
	private MemberService service;
	
	@GetMapping("/list")
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
		
		return "registpage2";
	}
	
	
	
	
	@GetMapping("/register")
	public void register() {
		
	}
	
	@PostMapping("/register")
	public String register(MemberVO member, RedirectAttributes rttr) {
		service.register(member);
		rttr.addFlashAttribute("result", member.getId());
		return "home";
	}
}
