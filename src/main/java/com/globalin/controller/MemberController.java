package com.globalin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
	
	
	
	
	@GetMapping("/register")
	public void register() {
		
	}
	
	public String register(MemberVO member, RedirectAttributes rttr) {
		service.register(member);
		rttr.addFlashAttribute("result", member.getId());
		return "redirect:/member/list";
	}
}
