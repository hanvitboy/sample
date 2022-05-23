package com.globalin.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.globalin.domain.BoardVO;
import com.globalin.domain.MemberVO;
import com.globalin.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	private static Logger log = LoggerFactory.getLogger(BoardController.class);
	
	@GetMapping("/list")
	public void getlist(Model model) {
		model.addAttribute(service.getList());
	}
	
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr, HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {
		req.setCharacterEncoding("UTF-8");
		log.info("############### "+ board.toString());	
		
		
		service.register(board);
		return "redirect:/boardpage";
	}
	
	
	@GetMapping("/registpage")
	public String registerPage(BoardVO board, RedirectAttributes rttr, HttpServletRequest req, HttpServletResponse resp) {

		return "board/register";
	}
	
	@GetMapping("/get")
	public void boardGetPageGET(int bno, Model model) throws Exception {
		
		model.addAttribute("pageInfo", service.getpage(bno));
	}
	
	
    @PostMapping("/modifyenter")
    public void boardModifyPOST(int bno, Model model) throws Exception {
        
        model.addAttribute("pageInfo", service.getpage(bno));
        
    }
    /* 페이지 수정 */
    @RequestMapping("/modify")
    public String boardModifyPOST(BoardVO board, RedirectAttributes rttr, HttpServletRequest req) {
    	
        service.modify(board);
        
        rttr.addFlashAttribute("result", "modify success");
        
        return "redirect:/boardpage";
        
    }
	
	
	
	
	
}
