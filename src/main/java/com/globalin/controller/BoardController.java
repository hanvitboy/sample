package com.globalin.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.globalin.domain.BoardVO;
import com.globalin.domain.Criteria;
import com.globalin.domain.LikeVO;
import com.globalin.domain.MemberVO;
import com.globalin.domain.ReplyVO;
import com.globalin.domain.pageMakerDTO;
import com.globalin.service.BoardService;
import com.globalin.service.LikeService;
import com.globalin.service.MemberService;
import com.globalin.service.ReplyService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	private MemberService mservice;
	
	@Autowired
	private LikeService likeservice;
	
	@Autowired
	private ReplyService rservice;
	
	private static Logger log = LoggerFactory.getLogger(BoardController.class);
	/* 게시글 리스트 페이지 접속(임시) */
//	@GetMapping("/list")
//	public void getlist(Model model) {
//		model.addAttribute(service.getList());
//	}
	
	/* 게시글 리스트 페이지 접속(페이징 처리) */
    @GetMapping("/boardpage")
    public void boardListGET(Model model, Criteria cri, LikeVO lv) {
        
    	lv = new LikeVO();
    	
    	System.out.println(lv);
    	
        model.addAttribute("list",service.getListPaging(cri));
        int total = service.getTotal(cri);        
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
	public String boardGetPageGET(int bno, Model model, Criteria cri, HttpSession session) throws Exception {
		MemberVO mem = (MemberVO) session.getAttribute("login_user");
		
		//조회수
		service.boardHit(bno);
		
		//게시글 정보들
		model.addAttribute("pageInfo", service.getpage(bno));
		model.addAttribute("cri",cri);
		
		//댓글 관련
		List<ReplyVO> replyList = rservice.readReply(bno);
		model.addAttribute("replyList",replyList);
		
		//좋아요 관련
		LikeVO likebean = new LikeVO();
		likebean.setLtbid(bno);
		try {
			if(mem!=null) {
				likebean.setLtmid(mem.getId());
			}else {
				return "redirect:/home";
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		int ltlike = 0;
		
		int check = likeservice.ltlikecount(likebean);
		log.info("wtf "+check);
		//기존에 좋아요를 하지않았다면 ltlike 1
		if(check ==0) {
			likeservice.likeinsert(likebean);
			
			
		}//기존에 좋아요를 했다면 ltlike 0
		else if(check==1) {
			
			ltlike = likeservice.ltlikegetinfo(likebean);
		}
		
		model.addAttribute("ltlike",ltlike);	
		return null;
		
	}
	
	/* 수정페이지 접속 */
    @PostMapping("/modifyenter")
    public void boardModifyPOST(int bno, Model model,Criteria cri) throws Exception {
        
        model.addAttribute("pageInfo", service.getpage(bno));
        model.addAttribute("cri", cri);
        
    }
    
    /* 페이지 수정 */
    @RequestMapping("/modify")
    public String boardModifyPOST(BoardVO vo, Criteria cri,RedirectAttributes rttr, HttpServletRequest req, Model model, int bno) throws Exception {
    	
        service.modify(vo);
        
        //rttr.addFlashAttribute("result", "modify success");
        
        model.addAttribute("pageInfo", service.getpage(bno));
        
        return "redirect:/board/get?pageNum="+cri.getPageNum()+"&amount="+cri.getAmount()+"&keyword="+cri.getKeyword()+"&type="+cri.getType()+"&bno=0"+vo.getBno();
        
    }
    
    /* 페이지 삭제 */
    @PostMapping("/delete")
    public String boardDeletePOST(int bno, RedirectAttributes rttr) {
        
        service.remove(bno);
        
        rttr.addFlashAttribute("result", "remove success");
        
        return "redirect:/board/boardpage";
        
    }
  //댓글 작성
  	@RequestMapping(value="/replyWrite", method = RequestMethod.POST)
  	public String replyWrite(ReplyVO vo, Criteria cri, RedirectAttributes rttr) throws Exception {
  		log.info("reply Write");
  		
  		rservice.registReply(vo);
  		
//  		rttr.addAttribute("bno", vo.getBno());
//  		rttr.addAttribute("page", cri.getPageNum());
//  		rttr.addAttribute("perPageNum", cri.getAmount());
//  		rttr.addAttribute("searchType", cri.getType());
//  		rttr.addAttribute("keyword", cri.getKeyword());
  		
  		return "redirect:/board/get?pageNum="+cri.getPageNum()+"&amount="+cri.getAmount()+"&keyword="+cri.getKeyword()+"&type="+cri.getType()+"&bno=0"+vo.getBno();
  	}
  //댓글 수정 GET
  	@RequestMapping(value="/replyUpdateView", method = RequestMethod.GET)
  	public String replyUpdateView(ReplyVO vo, Criteria cri, Model model) throws Exception {
  		log.info("reply Write");
  		
  		
  		model.addAttribute("replyUpdate", rservice.selectReply(vo.getRno()));
  		model.addAttribute("cri", cri);
  		
  		return "board/replyUpdateView";
  	}
  	
  	//댓글 수정 POST
  	@RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
  	public String replyUpdate(ReplyVO vo, Criteria cri, RedirectAttributes rttr) throws Exception {
  		log.info("reply Write");
  		
  		rservice.updateReply(vo);
  		
//  		rttr.addAttribute("bno", vo.getBno());
//  		rttr.addAttribute("page", cri.getPageNum());
//  		rttr.addAttribute("perPageNum", cri.getAmount());
//  		rttr.addAttribute("searchType", cri.getType());
//  		rttr.addAttribute("keyword", cri.getKeyword());
  		
  		return "redirect:/board/get?pageNum="+cri.getPageNum()+"&amount="+cri.getAmount()+"&keyword="+cri.getKeyword()+"&type="+cri.getType()+"&bno=0"+vo.getBno();
  	}
  //댓글 삭제 GET
  	@RequestMapping(value="/replyDeleteView", method = RequestMethod.GET)
  	public String replyDeleteView(ReplyVO vo, Criteria cri, Model model) throws Exception {
  		log.info("reply delete");
  		
  		
  		model.addAttribute("replyDelete", rservice.selectReply(vo.getRno()));
  		model.addAttribute("cri", cri);
  		

  		return "board/replyDeleteView";
  	}
  	
  	//댓글 삭제
  	@RequestMapping(value="/replyDelete", method = RequestMethod.POST)
  	public String replyDelete(ReplyVO vo, Criteria cri, RedirectAttributes rttr) throws Exception {
  		log.info("reply Write");
  		
  		rservice.deleteReply(vo);
//  	rttr.addAttribute("bno", vo.getBno());
//		rttr.addAttribute("page", cri.getPageNum());
//		rttr.addAttribute("perPageNum", cri.getAmount());
//		rttr.addAttribute("searchType", cri.getType());
//		rttr.addAttribute("keyword", cri.getKeyword());
  		return "redirect:/board/get?pageNum="+cri.getPageNum()+"&amount="+cri.getAmount()+"&keyword="+cri.getKeyword()+"&type="+cri.getType()+"&bno="+vo.getBno();
  	}
}
	

