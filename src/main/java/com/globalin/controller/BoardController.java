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
import com.globalin.domain.Criteria;
import com.globalin.domain.pageMakerDTO;
import com.globalin.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	private static Logger log = LoggerFactory.getLogger(BoardController.class);
	/* 게시글 리스트 페이지 접속(임시) */
//	@GetMapping("/list")
//	public void getlist(Model model) {
//		model.addAttribute(service.getList());
//	}
	
	/* 게시글 리스트 페이지 접속(페이징 처리) */
    @GetMapping("/boardpage")
    public void boardListGET(Model model, Criteria cri) {
        
        model.addAttribute("list",service.getListPaging(cri));
        int total = service.getTotal();        
        pageMakerDTO pm = new pageMakerDTO(cri, total);        
        model.addAttribute("pageMaker", pm);
    }
	
	/* 게시글 등록 기능 */
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr, HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {
		req.setCharacterEncoding("UTF-8");
		log.info("############### "+ board.toString());	
		
		
		service.register(board);
		rttr.addFlashAttribute("result", "regist success");
		return "redirect:/board/boardpage";
		
	}
	
	/* 게시글 등록 접속 */
	@GetMapping("/registpage")
	public String registerPage(BoardVO board, RedirectAttributes rttr, HttpServletRequest req, HttpServletResponse resp) {

		return "board/register";
	}
	
	/* 게시글 조회 */
	@GetMapping("/get")
	public void boardGetPageGET(int bno, Model model, Criteria cri) throws Exception {
		
		service.boardHit(bno);
		model.addAttribute("pageInfo", service.getpage(bno));
		model.addAttribute("cri",cri);
		
	}
	
	/* 수정페이지 접속 */
    @PostMapping("/modifyenter")
    public void boardModifyPOST(int bno, Model model,Criteria cri) throws Exception {
        
        model.addAttribute("pageInfo", service.getpage(bno));
        model.addAttribute("cri", cri);
        
    }
    
    /* 페이지 수정 */
    @RequestMapping("/modify")
    public void boardModifyPOST(BoardVO board, RedirectAttributes rttr, HttpServletRequest req, Model model, int bno) throws Exception {
    	
        service.modify(board);
        
        //rttr.addFlashAttribute("result", "modify success");
        
        model.addAttribute("pageInfo", service.getpage(bno));
        
    }
    
    /* 페이지 삭제 */
    @PostMapping("/delete")
    public String boardDeletePOST(int bno, RedirectAttributes rttr) {
        
        service.remove(bno);
        
        rttr.addFlashAttribute("result", "remove success");
        
        return "redirect:/board/boardpage";
        
    }
	
	
	
	
	
}
