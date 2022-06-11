package com.globalin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.globalin.domain.ReplyVO;
import com.globalin.service.ReplyService;

@RestController
//@RequestMapping("/*")
public class ReplyController {
	
	@Autowired
	ReplyService rservice;
	
	// 댓글 리스트
	@GetMapping("/replylist")
	public List<ReplyVO> replyList(@RequestParam("bno")int bno) throws Exception {
		List<ReplyVO> replylist = rservice.readReply(bno);
		return replylist;
		
	}
	
	// 댓글 작성
	@PostMapping("/replywrite/{reply_bno}/{reply_writer}/{reply_content}")
	public Map<String,Object> replywrite(@PathVariable("reply_bno") String bno, @PathVariable("reply_writer") String writer, @PathVariable("reply_content") String content){
		
		Map<String,Object> map = new HashMap<String,Object>();		
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
	
	// 댓글 수정
	@ResponseBody
	@RequestMapping(value = "/modifyReply", method = RequestMethod.POST)
	public void modifyReply(ReplyVO reply, HttpSession session) throws Exception {
	 
	 reply.setRno(reply.getRno());
	 reply.setContent(reply.getContent());
	
	  rservice.updateReply(reply);
	}
	 
	 
	 
	 

	// 댓글 삭제
	@ResponseBody
	@RequestMapping(value = "/deleteReply", method = RequestMethod.POST)
	public void getReplyList(ReplyVO reply) throws Exception {	

		reply.setRno(reply.getRno());
	 
	 rservice.deleteReply(reply);
	}
}

