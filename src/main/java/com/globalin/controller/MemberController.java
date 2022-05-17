package com.globalin.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.globalin.domain.MemberVO;
import com.globalin.service.MemberService;
import com.globalin.service.MemberServiceImpl;

@Controller
@RequestMapping("/*")
public class MemberController {

	@Autowired
	private MemberService service;

	@GetMapping("/list")
	public void list(Model model) {

		model.addAttribute("list", service.getList());

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
	public String register(MemberVO member, RedirectAttributes rttr) {
		service.register(member);
		rttr.addFlashAttribute("result", member.getId());
		return "home";
	}

	@Inject
	@RequestMapping("login.do")
	public String login() {
		return "member/login";
	}

@RequestMapping("login_check.do")
public ModelAndView login_check(@ModelAttribute MemberVO member, HttpSession session) {
 String name = service.loginCheck(member, session);  
 ModelAndView mav = new ModelAndView();
  if (name != null) { // 로그인 성공 시
   mav.setViewName("home"); // 뷰의 이름
   } else { // 로그인 실패 시
     mav.setViewName("/loginpage"); 		
     //mav.addObject("message", "error");
     }
     return mav;
   }

	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session, ModelAndView mav) {
		service.logout(session);
		mav.setViewName("/loginpage");
		//mav.addObject("message", "logout");
		return mav;
	}

}
