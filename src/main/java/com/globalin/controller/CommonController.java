package com.globalin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.globalin.service.MemberService;

@Controller
public class CommonController {
	
	@Autowired
	private MemberService service;
	
	
	@PostMapping("/loginpage")
	public void loginpage() {
	}
	
	@PostMapping("/registpage")
	public void registpage() {
		
	}
	
	@PostMapping("/withdrawalpage")
	public void withdrawalpage() {
		
	}
	
	@GetMapping("/listpage")  
	public void listpage(Model model) {
		System.out.println(service.getList());
		model.addAttribute("list", service.getList());
		
	}
	
	
	
	
}
