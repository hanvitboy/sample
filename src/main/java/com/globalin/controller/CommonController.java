package com.globalin.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.globalin.service.BoardService;
import com.globalin.service.MemberService;

@Controller
@RequestMapping("/*")
public class CommonController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private BoardService bservice;
	
	
	@PostMapping("/loginpage")
	public void loginpage() {
	}
	@GetMapping("/loginpage2")
	public void loginpage3() {
	}
	
	@PostMapping("/loginpage2")
	public void loginpage4() {
	}
	
	@GetMapping("/loginpage")
	public void loginpage2() {
	}
	
	@PostMapping("/registpage")
	public void registpage() {
		
	}
	
	@PostMapping("/withdrawalpage")
	public void withdrawalpage() {
		
	}
	
	@PostMapping("/infopage")
	public void infopage() {
		
	}
	
	@GetMapping("/listpage")  
	public void listpage(Model model) {
		model.addAttribute("list", service.getList());
		
	}
	@PostMapping("/findpwpage")
	public void findpwpage() {
		
		
	
	}
	
	@PostMapping("/home")
	public void homepage() {
		
	}
	@GetMapping("/home")
	public void homepage2() {
	}
	
	
	@PostMapping("/kcalcalpage")
	public String kcalcalpage(HttpSession session) {
		
	        return "kcalcalpage";


	
	}
	@GetMapping("/kcalcalpage")
	public String kcalcalpage2(HttpSession session) {
		
        return "kcalcalpage";



}
	
	@RequestMapping("/boardpage")
	public void boardpage(Model model) {
		model.addAttribute("list", bservice.getList());
	}
	
	
}
