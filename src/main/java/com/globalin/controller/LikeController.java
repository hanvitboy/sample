package com.globalin.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.globalin.domain.LikeVO;
import com.globalin.service.BoardService;
import com.globalin.service.LikeService;

@Controller
@RequestMapping("/like/*")
public class LikeController {
	
	@Autowired
	private LikeService likeservice;
	@Autowired
	private BoardService bservice;
	
	private static final Logger log = LoggerFactory.getLogger(LikeController.class);
	
	@ResponseBody
	@PostMapping("/likeupdate")
	public Map<String,String> likeupdate(@RequestBody LikeVO likebean){
		log.info("likeupdate");
		
		Map<String,String> map = new HashMap<String, String>();
		
		log.info(likebean.toString());
		
		try {
			likeservice.likeupdate(likebean);
			if(likebean.getCount() == 0) {
			bservice.likeTotal(likebean.getLtbid());
			}
			else {
				bservice.likeTotalM(likebean.getLtbid());
				
			}
			map.put("result", "success");
			
		}catch(Exception e) {
			e.printStackTrace();
			map.put("result", "fail");
		}
		
		return map;
	}


}
