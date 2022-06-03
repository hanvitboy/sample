package com.globalin.controller;

import java.io.Console;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.globalin.domain.LikeVO;
import com.globalin.domain.ReplyVO;
import com.globalin.service.BoardService;
import com.globalin.service.LikeService;
import com.globalin.service.ReplyService;

@RestController
//@RequestMapping("/*")
public class ReplyController {
	
	@Autowired
	ReplyService rservice;
	
	@GetMapping("/replylist")
	public List<ReplyVO> replyList(@RequestParam("bno")int bno) throws Exception {
		System.out.println("fuck");
		List<ReplyVO> replylist = rservice.readReply(bno);
		return replylist;
		
	}
	
	@PostMapping("/replywrite/{reply_bno}/{reply_writer}/{reply_content}")
	public Map<String,Object> replywrite(@PathVariable("reply_bno") String bno, @PathVariable("reply_writer") String writer, @PathVariable("reply_content") String content){
		Map<String,Object> map = new HashMap<String,Object>();		
		System.out.println("일미집체인점");
		try {
			ReplyVO vo = new ReplyVO();
			vo.setBno(Integer.parseInt(bno));
			vo.setWriter(writer);
			vo.setContent(content);
			rservice.registReply(vo);
			
			map.put("result", "success");
			
			
		} catch(Exception e) {
			e.printStackTrace();
			map.put("result", "fail");
		}
		return map;
		
	}
	
	// 상품 소감(댓글) 수정
	@ResponseBody
	@RequestMapping(value = "/modifyReply", method = RequestMethod.POST)
	public void modifyReply(ReplyVO reply, HttpSession session) throws Exception {
	System.out.println(reply);
	 
	 reply.setRno(reply.getRno());
	 reply.setContent(reply.getContent());
	
	  rservice.updateReply(reply);
	}
	 
	 
	 
	 

	// 상품 소감(댓글) 삭제
	@ResponseBody
	@RequestMapping(value = "/deleteReply", method = RequestMethod.POST)
	public void getReplyList(ReplyVO reply) throws Exception {	

		reply.setRno(reply.getRno());
	 
	 rservice.deleteReply(reply);
	}
}
	
//	@PostMapping("/replyupdate/{rno}/{content}")
//	public Map<String, Object> replyupdate(@PathVariable int rno,@PathVariable String content ){
//		Map<String, Object> map = new HashMap<String,Object>();
//		try {
//			ReplyVO replyvo = new ReplyVO();
//			replyvo.setRno(rno);
//			replyvo.setContent(content);
//			rservice.updateReply(replyvo);
//			
//			map.put("result", "success");
//		}catch (Exception e) {
//			e.printStackTrace();
//			map.put("result", "fail");
//		}
//		return map;
//	}
	// 상품 소감(댓글) 수정
//	@ResponseBody
//	@RequestMapping(value = "/view/modifyReply", method = RequestMethod.POST)
//	public int modifyReply(ReplyVO reply, HttpSession session) throws Exception {
//	 log.info("modify reply");
//	 
//	 int result = 0;
//	 
//	 MemberVO member = (MemberVO)session.getAttribute("member");
//	 String userId = service.idCheck(reply.getRepNum());
//	 
//	 if(member.getUserId().equals(userId)) {
//	  
//	  reply.setUserId(member.getUserId());
//	  service.modifyReply(reply);
//	  result = 1;
//	 }
//	 
//	 return result;
//	} 

