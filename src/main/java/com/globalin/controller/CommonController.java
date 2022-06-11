package com.globalin.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.globalin.service.BoardService;


@Controller
@RequestMapping("/*")
public class CommonController {
	
	
	@Autowired
	private BoardService bservice;
	
	
	@RequestMapping("/loginpage")
	public void loginpage() {
	}
	
	@RequestMapping("/loginpage2")
	public void loginpage2() {
	}
	
	@RequestMapping("/loginpage3")
	public void loginpage3() {
	}
		
	@PostMapping("/registpage")
	public void registpage() {
	}
	
	@RequestMapping("/rspage")
	public void rspage() {}
	
	@PostMapping("/withdrawalpage")
	public void withdrawalpage() {
	}
	
	@RequestMapping("/training")
	public void training() {}
	
	@PostMapping("/infopage")
	public void infopage() {
	}
	

	@PostMapping("/findpwpage")
	public void findpwpage() {
	}

	@RequestMapping("/diet")
	public void diet() {}
	
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
